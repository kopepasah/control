# Control

Code, tools, config and setup scripts for local development environment (MacOS and usually on the latest stable version).

__Assumptions__

This repo assumes you have already installed Git, Node and NPM onto your local machine.

## Installation

1. Clone the repository recursively to your user directory (or wherever really).
2. Run `npm install`.
3. Run `grunt atom:update` to build the latest stable version of Atom.
4. Run `grunt sync:configs` to use the set configs within control (these will overwrite your local configs, so beware).

---

## Terminal

![One Dark Example](https://kopepasah-github-assets.s3.amazonaws.com/control/one-dark-example.png)

### Theme

Included is a theme for Terminal which closely resembles [Atom's One Dark theme](https://atom.io/themes/one-dark-syntax) (light version also included). You can find these in `configs/terminal` and install using the Terminal Profiles installation tool.

### Prompt

The Terminal prompt is modified to show the user, Git branch (if applicable) and the current directory. If not in a Git repo, the directory output will show the present working directory, substituting the user's home with a tilde.

---

## Submodules

There are several submodules included to get you up and running quickly, but configs are not included because they highly depends on the tools you currently use and the location of Control installation. Many tools are directly related to WordPress and should have you up and running for development in no time.

---

## Contributing

I am open to contributions to improve local development environment setup and if you are interested, please follow the [contributing.md](contributing.md) file for more information.
