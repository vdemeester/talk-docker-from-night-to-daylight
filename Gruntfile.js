module.exports = function(grunt) {

    grunt.initConfig({
        zenika: {
            formation: {
                name: 'Modele'
            }
        }
    });

    grunt.loadTasks('node_modules/zenika-formation-framework');
	
    grunt.registerTask('default', ['displaySlides']);

};
