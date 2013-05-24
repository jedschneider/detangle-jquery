module.exports = function(grunt) {
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    coffee: {
      compile: {
        files: {
          "js/app.js" : ['src/*.coffee']
        }
      }
    },
    watch: {
      coffee: {
        files: ['src/*.coffee'],
        tasks: ['coffee:compile'],
      }
    }
  });

  grunt.loadNpmTasks('grunt-contrib-coffee');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.registerTask('default', ['coffee', 'watch']);
  grunt.file.copy('node_modules/jquery-browser/lib/jquery.js', 'js/jquery.js')
};
