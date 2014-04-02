module.exports = (grunt) ->
  require('load-grunt-config')(grunt)
  grunt.initConfig
    config: grunt.file.readJSON('config.json')
    clean:
      stylesheets: ["assets/stylesheets"]
      javascripts: ["assets/javascripts"]
      images: ["assets/images"]
      html: ['**/*.html', '!_views/**/*.html', '!_includes/scripts.html']
    sass:
      compile:
        options:
          style: 'compressed'
        files: [
          expand: true
          cwd: '_assets/stylesheets/'
          src: ['**/*.scss']
          dest: 'assets/stylesheets'
          ext: '.css'
        ]
    coffee:
      compile:
        expand: true
        cwd: '_assets/javascripts/'
        src: ['**/*.coffee']
        dest: 'assets/javascripts'
        ext: '.js'
        options:
          bare: true
          preserve_dirs: true
    jade:
      compile:
        options:
          data:
            debug: false
          basedir: ".tmp/_views"
        files:[
          expand: true
          cwd: '.tmp/_views/'
          src: ['**/*.jade', '!_includes/liquid.jade']
          dest: '.'
          ext: '.html'
        ]
    copy:
      jade:
        expand: true
        cwd: '_views/'
        src: ['**/*.jade']
        dest: '.tmp/_views'
        options:
          process: (content, srcpath) ->
            if srcpath == '_views/_includes/liquid.jade'
              content
            else
              "include /_includes/liquid.jade\n#{content}"
      stylesheets:
        expand: true
        cwd: '_assets/bower_components/'
        src: ['**/*.css']
        dest: '_assets/bower_components'
        ext: ".scss"
      javascripts:
        expand: true
        cwd: '_assets/javascripts/'
        src: ['**/*.js']
        dest: 'assets/javascripts'
      html:
        expand: true
        cwd: '_views/'
        src: ['**/*.{html,md}', '!_includes/scripts.html']
        dest: '.'
    sync:
      html:
        files:[
          expand: true
          cwd: '_views/'
          src: ['_includes/scripts.html']
          dest: '.'
        ]
    imagemin:
      dynamic:
        options:
          optimizationLevel: 5
        files: [
          expand: true
          cwd: '_assets/images/'
          src: ['**/*.{png,jpg,gif}']
          dest: 'assets/images'
        ]
    autoprefixer:
      dist:
        expand: true
        cwd: 'assets/stylesheets',
        src: ['**/*.css'],
        dest: 'assets/stylesheets',
    useminPrepare:
      html: '_views/_includes/scripts.html'
      options:
        dest: '.'
    concat: {}
    uglify: {}
    usemin:
      html: '_includes/scripts.html'
    jekyll:
      build:
        src: '.'
        dest: '_site'
      options:
        bundleExec: true
        drafts: true
    connect:
      server:
        options:
          port: '<%= config.portNumber %>',
          base: "_site"
    watch:
      # images:
      #   files: '<%= imagemin.dynamic.files[0].cwd %><%= imagemin.dynamic.files[0].src[0] %>'
      #   tasks: ['images', 'jekyll:build']
      stylesheets:
        files: ['<%= copy.stylesheets.cwd %><%= copy.stylesheets.src[0] %>',
                '<%= sass.compile.files[0].cwd %><%= sass.compile.files[0].src[0] %>']
        tasks: ['stylesheets', 'jekyll:build']
      javascripts:
        files: ['<%= copy.javascripts.cwd %><%= copy.javascripts.src[0] %>',
                '<%= coffee.compile.cwd %><%= coffee.compile.src[0] %>']
        tasks: ['javascripts', 'jekyll:build']
      html:
        files: ['<%= copy.jade.cwd %><%= copy.jade.src[0] %>',
                '<%= copy.html.cwd %><%= copy.html.src[0] %>',
                '<%= sync.html.files[0].cwd %><%= sync.html.files[0].src[0] %>']
        tasks: ['html', 'jekyll:build']
      usemin:
        files: ['<%= usemin.html %>']
        tasks: ['javascripts', 'jekyll:build']
      markdown:
        files: ["**/_posts/*.md", "_data/**/*.yml", "_config.yml"]
        tasks: ['jekyll:build']
      options:
        livereload: '<%= config.livereloadEnabled %>'

  # copy:stylesheets, which creates scss files from css files, must come before sass.
  # Waiting for https://github.com/nex3/sass/issues/556 to be resolved.
  grunt.registerTask 'images', ['clean:images', 'imagemin']
  grunt.registerTask 'images-build', ['images', 'jekyll:build']
  grunt.registerTask 'stylesheets', ['clean:stylesheets', 'copy:stylesheets', 'sass', 'autoprefixer']
  grunt.registerTask 'javascripts', ['clean:javascripts', 'coffee', 'copy:javascripts', 'useminPrepare', 'concat', 'uglify', 'usemin']
  grunt.registerTask 'html', ['clean:html', 'copy:jade', 'jade', 'copy:html', 'sync:html']

  grunt.registerTask 'default', [
                                 # "images",
                                 "stylesheets",
                                 "html", # html must come before javascripts
                                 "javascripts",
                                 "jekyll:build",
                                 "connect",
                                 "watch"
                               ]
