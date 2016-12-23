/**
 * Module: grunt-sync
 * Documentation: https://www.npmjs.com/package/grunt-sync
 */

var path = require( 'path' );

module.exports = {
	/**
	 * Command: grunt sync:configs
	 * Action: Copys content from Control's configs to the users home.
	 */
	configs : {
		verbose : true,
		updateAndDelete : false,
		compareUsing: 'md5',
		files : [
			{
				cwd : '<%= location.configs %>',
				dest : '<%= location.home %>',
				src : [
					'.bash_profile',
					'.bashrc',
					'.inputrc',
					'.vimrc',
				],
			}
		]
	},
};
