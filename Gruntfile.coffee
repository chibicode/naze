module.exports = (grunt) ->
  require('load-grunt-config')(grunt)
  config =
    clean:
      stylesheets: ["assets/stylesheets"]
      javascripts: ["assets/javascripts"]
      images: ["assets/images"]
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
        filter: 'isFile'
        ext: ".scss"
      javascripts:
        expand: true
        cwd: '_assets/javascripts/'
        src: ['**/*.javascripts']
        dest: 'assets/javascripts'
        filter: 'isFile'
      html:
        expand: true
        cwd: '_views/'
        src: ['**/*.html']
        dest: '.'
        filter: 'isFile'
    imagemin:
      dynamic:
        files: [
          expand: true
          cwd: '_assets/images/'
          src: ['**/*.{png,jpg,gif}']
          dest: 'assets/images'
        ]
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
          port: 7280,
          base: "_site"
    watch:
      images:
        files: '<%= imagemin.dynamic.files[0].cwd %><%= imagemin.dynamic.files[0].src %>'
        tasks: ['clean:images', 'imagemin', 'jekyll:build']
      stylesheets:
        files: ['<%= copy.stylesheets.cwd %><%= copy.stylesheets.src %>',
                '<%= sass.compile.files[0].cwd %><%= sass.compile.files[0].src %>']
        tasks: ['clean:stylesheets', 'sass', 'copy:stylesheets', 'jekyll:build']
      javascripts:
        files: ['<%= copy.javascripts.cwd %><%= copy.javascripts.src %>',
                '<%= coffee.compile.cwd %><%= coffee.compile.src %>']
        tasks: ['clean:javascripts', 'coffee', 'copy:javascripts', 'jekyll:build']
      html:
        files: ['<%= jade.compile.files[0].cwd %><%= jade.compile.files[0].src %>', '<%= copy.html.cwd %><%= copy.html.src %>']
        tasks: ['jade', 'copy:html', 'useminAll', 'jekyll:build']
      jekyll:
        files: "_posts/**/*.md"
        tasks: ['jekyll:build']
      options:
        livereload: true

  grunt.initConfig config
  grunt.registerTask 'useminAll', ['useminPrepare', 'concat', 'uglify', 'usemin']
  grunt.registerTask 'default', ["clean:stylesheets",
                                 "clean:javascripts",
                                 "clean:images",
                                 "sass",
                                 "coffee",
                                 "jade",
                                 "copy:stylesheets",
                                 "copy:javascripts",
                                 "copy:html",
                                 "imagemin",
                                 "useminAll",
                                 "jekyll:build",
                                 "connect",
                                 "watch"
                               ]
