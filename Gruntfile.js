module.exports = function(grunt) {

  // Modules
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('bootcamp');

  // Grunt Tasks
  grunt.initConfig({
    dir : {
      src : 'stylesheets',
      dist : 'dist'
    },
    pkg: grunt.file.readJSON('package.json'),

    concat: {
      options: {
        banner: '/*! <%= pkg.name %> - v<%= pkg.version %> - <%= grunt.template.today("yyyy-mm-dd") %> */\n',
      },
      dist: {
        src: [
          '<%= dir.src %>/SassyLists/helpers/_missing-dependencies.scss',
          '<%= dir.src %>/SassyLists/helpers/_str-compare.scss',
          '<%= dir.src %>/SassyLists/helpers/_true.scss',
          '<%= dir.src %>/SassyLists/helpers/_is-number.scss',
          '<%= dir.src %>/SassyLists/_chunk.scss',
          '<%= dir.src %>/SassyLists/_comma-list.scss',
          '<%= dir.src %>/SassyLists/_contain.scss',
          '<%= dir.src %>/SassyLists/_count-values.scss',
          '<%= dir.src %>/SassyLists/_debug.scss',
          '<%= dir.src %>/SassyLists/_explode.scss',
          '<%= dir.src %>/SassyLists/_every.scss',
          '<%= dir.src %>/SassyLists/_first.scss',
          '<%= dir.src %>/SassyLists/_flatten.scss',
          '<%= dir.src %>/SassyLists/_has-values.scss',
          '<%= dir.src %>/SassyLists/_has-multiple-values.scss',
          '<%= dir.src %>/SassyLists/_insert-nth.scss',
          '<%= dir.src %>/SassyLists/_intersection.scss',
          '<%= dir.src %>/SassyLists/_is-empty.scss',
          '<%= dir.src %>/SassyLists/_is-single.scss',
          '<%= dir.src %>/SassyLists/_is-symmetrical.scss',
          '<%= dir.src %>/SassyLists/_last-index.scss',
          '<%= dir.src %>/SassyLists/_last.scss',
          '<%= dir.src %>/SassyLists/_loop.scss',
          '<%= dir.src %>/SassyLists/_prepend.scss',
          '<%= dir.src %>/SassyLists/_purge.scss',
          '<%= dir.src %>/SassyLists/_random-value.scss',
          '<%= dir.src %>/SassyLists/_range.scss',
          '<%= dir.src %>/SassyLists/_remove-duplicates.Scss',
          '<%= dir.src %>/SassyLists/_remove-nth.scss',
          '<%= dir.src %>/SassyLists/_remove.scss',
          '<%= dir.src %>/SassyLists/_replace-nth.scss',
          '<%= dir.src %>/SassyLists/_replace.scss',
          '<%= dir.src %>/SassyLists/_reverse.scss',
          '<%= dir.src %>/SassyLists/_shuffle.scss',
          '<%= dir.src %>/SassyLists/_slice.scss',
          '<%= dir.src %>/SassyLists/_sort.scss',
          '<%= dir.src %>/SassyLists/_some.scss',
          '<%= dir.src %>/SassyLists/_sum.scss',
          '<%= dir.src %>/SassyLists/_tail.scss',
          '<%= dir.src %>/SassyLists/_to-list.scss',
          '<%= dir.src %>/SassyLists/_to-map.scss',
          '<%= dir.src %>/SassyLists/_to-string.scss',
          '<%= dir.src %>/SassyLists/_union.scss',
          '<%= dir.src %>/SassyLists/_walk.scss'
        ],
        dest: '<%= dir.dist %>/_<%= pkg.name %>.scss',
      },
    },

    // Sass
    sass: {
      test: {
        options: {
          style: 'expanded',
          quiet: 'true',
          compass: false,
          loadPath: './node_modules/bootcamp/dist' // or './bower_components/bootcamp/dist'
        },
        files: {
          './tmp/results.css': './test/test.scss'
        }
      }
    },

    // Bootcamp
    bootcamp: {
      test: {
        files: {
          src: ['./tmp/results.css']
        }
      }
    },

    // Watch
    watch: {
      dist: {
        files: [
                './test/**/*.scss',
                './<%= dir.src %>/**/*.scss'
                ],
        tasks: ['test']
      }
    }
  });

  // Tasks
  grunt.registerTask('test', ['sass', 'bootcamp']);
  grunt.registerTask('dev', ['test', 'watch']);
  grunt.registerTask('build', ['test', 'concat']);
};
