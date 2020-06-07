# Shell Config

This repository contains scripts to set up a basic development environment. If it modifies a file that already exists it first creates a backup, so nothing you've configured yourself will be lost.

It will only run on macOS or Windows (via [GitBASH](https://gitforwindows.org/)).

## Contents <!-- omit in toc -->

- [Prerequisites](#Prerequisites)
- [Usage](#Usage)
- [Detailed Prerequisites](#Detailed-Prerequisites)
  - [Windows](#Windows)
  - [Mac](#Mac)

## Prerequisites

These scripts are meant for absolute beginners. If you know how files like `~/.bash_profile` work then this (probably) isn't for you.

In general, three things need to be true for these scripts to work:

1. You've installed *Visual Studio Code*
1. You've installed *git*
1. You're using `bash` for your shell

If you've done this already, great! See [Usage](#Usage) to get started. If you *haven't* don't it or aren't sure, don't worry, the scripts will stop if something isn't set up correctly and tell you how to set it up.

If you know you haven't done the above then see [Detailed Prerequisites](#Detailed-Prerequisites) below.

## Usage

Run the three following commands one at a time (i.e., past a single line, hit enter, paste next line, hit enter, etc.):

```console
git clone https://github.com/jfarmer/config-environment.git
cd config-environment
./config-environment
```

This will do a few things:

1. Configure your shell/terminal to look like your classmates'
1. Install a few relevant VS Code extensions
1. Enable a few important settings in VS Code
1. Configure `git` to use your name + email address so that GitHub recognizes your commits
1. On macOS, change some system settings to be more developer-friendly


A *shell* is any program that implements a command-line interface. There are many shells one can use, but `bash` is the most common.

## Detailed Prerequisites

### Windows

1. Install [Visual Studio Code][url-vscode]
1. Install [Git for Windows][url-gitbash]. *Git BASH* will be our main command-line interface.

*Git for Windows* comes with *Git BASH*, its own version of the `bash` shell, so you don't need to do anything special to install it.

### Mac

1. Install the [homebrew package manager][url-homebrew]
1. Install `git` using Homebrew:

   ```console
   brew install git
   ```

1. Install Visual Studio Code using Homebrew:

   ```console
   brew cask install visual-studio-code
   ```

1. Set your default shell to `bash` with the following command:

   ```console
   chsh -s /bin/bash
   ```

   You'll be prompted to type a password. The command line doesn't give you feedback that you're typing (e.g., no asterisks or dots), but rest assured, you're typing!

   Just type your password and hit enter.


[url-homebrew]: https://brew.sh/
[url-vscode]: https://code.visualstudio.com/
[url-gitbash]: https://gitforwindows.org/
