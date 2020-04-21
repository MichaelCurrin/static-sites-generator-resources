# Install Jekyll


### 1. Install Ruby

Install or upgrade [Ruby](https://github.com/MichaelCurrin/learn-to-code/blob/master/en/topics/scripting_languages/Ruby/README.md#install-and-upgrade).


### 2. Update shell config

Update your shell config file (`.bashrc` or `.zshrc`), such that the `~/gems/` directory is accessible for your user from anywhere.

For example:

```sh
export GEM_PATH="$HOME/.gem/ruby/2.6.0/bin"
export PATH="$GEM_PATH:$PATH"
```

Then reload your terminal or start a new tab.


### 3. Install Jekyll

It is not recommended to install Jekyll globally as that is available for all users and that is also not possible on macOS Catalina due to the global gems being frozen.

Follow one of the approaches below:

- [Install for your user](jekyll_for_user.md) 
    - If you want use use Jekyll across projects and avoid using `sudo`
- [Install for a project](jekyll_for_project.md) 
    - If you want to install a per-project Jekyll from a Gemfile, using Bundler.
