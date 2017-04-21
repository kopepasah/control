/**
 * Module: grunt-shell
 * Documentation: https://www.npmjs.com/package/grunt-shell
 */

module.exports = {
	atom_update : {
		command: [
			'cd <%= location.control %>/tools/atom',
			'export ATOM_VERSION=$(git describe --tags $(git rev-list --tags="v1.16.*" --max-count=1))',
			'git checkout $ATOM_VERSION',
			'echo "Atom:   ${ATOM_VERSION}"',
			'script/build --install',
			'git checkout master',
		].join('&&')
	},

	atom_update_beta : {
		command: [
			'cd <%= location.control %>/tools/atom',
			'export ATOM_VERSION=$(git describe --tags $(git rev-list --tags="v1.16.*" --max-count=1))',
			'git checkout $ATOM_VERSION',
			'echo "Atom:   ${ATOM_VERSION}"',
			'script/build --install',
			'git checkout master',
		].join('&&')
	},
};
