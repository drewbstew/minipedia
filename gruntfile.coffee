module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    jshint:
      options:
        reporter: require 'jshint-stylish'
      build: ['Gruntfile.js', 'src/**/*.js']
    coffee:

      compile:
        files: [
          'comp/js/script.js': 'src/coffee/script.coffee'
        ]
    compass:
      dev:
        options:
          sassDir: 'src/sass',
          cssDir: 'comp/css'
    cssmin:
      options:
        banner: '/*\n <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd")' +
        ' %> \n*/\n'
      build:
        files: 'dist/css/style.min.css': 'comp/css/style.css'
    uglify:
      options:
        banner: '/*\n <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd")' +
        '%> \n*/\n'
      build:
        files:
          'dist/js/script.min.js': 'comp/js/script.js'
    # copy:
    #   index:
    #     expand: true,
    #     src: 'index.html',
    #     dest: '../../../../../../../xampp/htdocs/minipedia'
    #   dist:
    #     expand: true,
    #     src: 'dist/*/*',
    #     dest: '../../../../../../../xampp/htdocs/minipedia'

  gruntTasks = ['grunt-contrib-coffee', 'grunt-contrib-jshint', \
  'grunt-contrib-uglify', 'grunt-contrib-compass', 'grunt-contrib-cssmin', \
  'grunt-contrib-copy']

  grunt.loadNpmTasks(task) for task in gruntTasks
  grunt.registerTask 'default', ['coffee', 'jshint', 'uglify', 'compass', \
  'cssmin', 'copy']
