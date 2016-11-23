/**
 * Module: grunt-contrib-watch
 * Documentation: https://www.npmjs.com/package/grunt-contrib-watch
 */

module.exports = {
	/**
	 * Command: grunt watch:configs
	 * Action: Copys content from Control's configs to the users home.
	 */
	configs : {
		files: [ '<%= location.configs %>/.*' ],
		tasks: [ 'sync:configs' ],
	}
};
