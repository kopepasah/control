# Control

Code, tools, config and setup scripts for local development environment (MacOS and usually on the latest stable version). Used when setting up a new computer or when required to work on an additional computer for a short period of time.

## Installation

0. Download Git (if not already installed)
0. Clone Control recursively into the users home directory.
0. Run the necessary scripts for this install, found in the `bash` directory.

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

I am open to contributions to improve local development environment setup and if you are interested, please fork and open a pull request.
