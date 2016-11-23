/**
 * Module: grunt-contrib-clean
 * Documentation: https://www.npmjs.com/package/grunt-contrib-clean
 */

module.exports = {
	/**
	 * Command: grunt clean:atom
	 * Action: Copys content from Control's configs to the users home.
	 */
	atom : {
		options: {
			force: true
		},
		src : [ '<%= location.root %>/Applications/Atom.app' ],
	}
};
