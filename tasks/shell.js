/**
 * Module: grunt-shell
 * Documentation: https://www.npmjs.com/package/grunt-shell
 */

module.exports = {
	/**
	 * Command: grunt shell:atom
	 * Action: Copys content from Control's configs to the users home.
	 */
	atom : {
		command: [
			'cd <%= location.control %>/tools/atom',
			'export ATOM_VERSION=$(git describe --tags $(git rev-list --tags="v1.12.*" --max-count=1))',
			'git checkout $ATOM_VERSION',
			'echo "Atom:   ${ATOM_VERSION}"',
			'script/build --install',
		].join('&&')
	},
};
