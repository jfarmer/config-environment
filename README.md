# Shell Config

Here are some nicer shell defaults. They add things like:

- Colorized prompt
- Active git branch in prompt
- Colorized `ls` output

## Usage

Run the following commands one at a time:

```console
git clone https://github.com/jfarmer/shell-config.git
cd shell-config
./add-shell-config
```

This will do three things:

1. Copy the `.bash_defaults` file to your home directory
1. Back up your `.bash_profile` configuration file
1. Prepend a line telling `bash` to load `.bash_defaults` to your `.bash_profile`
