module.exports = (grunt) ->
  require('load-grunt-config')(grunt)
  grunt.initConfig
    config: grunt.file.readJSON('config.json')
    clean:
      stylesheets: ["assets/stylesheets"]
      javascripts: ["assets/javascripts"]
      images: ["assets/images"]
      html: ['**/*.html', '!_views/**/*.html']
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
        files:[
          expand: true
          cwd: '_views/'
          src: ['**/*.jade']
          dest: '.'
          ext: '.html'
        ]
    copy:
      stylesheets:
        expand: true
        cwd: '_assets/bower_components/'
        src: ['**/*.css', '!**/*.min.css']
        dest: '_assets/bower_components'
        ext: ".scss"
      javascripts:
        expand: true
        cwd: '_assets/javascripts/'
        src: ['**/*.javascripts']
        dest: 'assets/javascripts'
      html:
        expand: true
        cwd: '_views/'
        src: ['**/*.{html,md}']
        dest: '.'
    imagemin:
      dynamic:
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
      images:
        files: '<%= imagemin.dynamic.files[0].cwd %><%= imagemin.dynamic.files[0].src %>'
        tasks: ['images', 'jekyll:build']
      stylesheets:
        files: ['<%= copy.stylesheets.cwd %><%= copy.stylesheets.src %>',
                '<%= sass.compile.files[0].cwd %><%= sass.compile.files[0].src %>']
        tasks: ['stylesheets', 'jekyll:build']
      javascripts:
        files: ['<%= copy.javascripts.cwd %><%= copy.javascripts.src %>',
                '<%= coffee.compile.cwd %><%= coffee.compile.src %>']
        tasks: ['javascripts', 'jekyll:build']
      html:
        files: ['<%= jade.compile.files[0].cwd %><%= jade.compile.files[0].src %>', '<%= copy.html.cwd %><%= copy.html.src %>']
        tasks: ['html', 'jekyll:build']
      usemin:
        files: ['<%= usemin.html %>']
        tasks: ['useminAll', 'jekyll:build']
      markdown:
        files: "_posts/**/*.md"
        tasks: ['jekyll:build']
      options:
        livereload: '<%= config.livereloadEnabled %>'

  # copy:stylesheets, which creates scss files from css files, must come before sass.
  # Waiting for https://github.com/nex3/sass/issues/556 to be resolved.
  grunt.registerTask 'images', ['clean:images', 'imagemin']
  grunt.registerTask 'stylesheets', ['clean:stylesheets', 'copy:stylesheets', 'sass', 'autoprefixer']
  grunt.registerTask 'javascripts', ['clean:javascripts', 'coffee', 'copy:javascripts']
  grunt.registerTask 'html', ['clean:html', 'jade', 'copy:html']
  grunt.registerTask 'useminAll', ['javascripts', 'useminPrepare', 'concat', 'uglify', 'usemin']

  grunt.registerTask 'default', ["images",
                                 "stylesheets",
                                 "javascripts",
                                 "html",
                                 "useminAll"
                                 "jekyll:build",
                                 "connect",
                                 "watch"
                               ]
