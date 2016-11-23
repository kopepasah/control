module.exports = function( grunt ) {
	var path = require( 'path' );

	/**
	 * Keep Grunt tasks in their own directory (tasks) and include them all at
	 * once, including registering the tasks.
	 * See: https://www.npmjs.com/package/load-grunt-config
	 */
	require( 'load-grunt-config' )( grunt, {
		configPath : path.join( process.cwd(), 'tasks' ),

		data : {
			location : {
				root    : path.join( __dirname, '../../..' ),
				home    : path.join( __dirname, '..' ),
				control : path.join( __dirname ),
				configs : path.join( __dirname, 'configs' ),
				tools   : path.join( __dirname, 'tools' ),
			},
		},

		preMerge : function( config, data ) {},
	} );

	// Register grunt tasks.
	grunt.registerTask(
		'update:atom', [
			'clean:atom',
			'shell:atom',
		]
	);

	// Register grunt tasks.
	grunt.registerTask(
		'configs', [
			'watch:configs',
		]
	);
}
