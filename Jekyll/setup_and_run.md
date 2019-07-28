# Setup and Run
> Guide to install and run a Jekyll static website using from a clone URL.

Follow the instructions in this guide to setup and run a Jekyll site locally. It will use `ruby` to compile HTML and Markdown templates into HTML, avoiding duplication of code.

For instructions on how to create your own site, see the [Jekyll](https://jekyllrb.com) or [Github Pages](https://pages.github.com/) documentation.


**Table of Contents:**

- [Overview](#Overview)
- [Setup repo](#Setup-repo)
- [A. Project without a Gemfile](#A-Project-without-a-Gemfile)
    - [Installation](#Installation)
        - [System dependencies](#System-dependencies)
        - [Project packages](#Project-packages)
    - [Run](#Run)
- [B. Project with a Gemfile](#B-Project-with-a-Gemfile)
    - [Installation](#Installation-1)
        - [System dependencies](#System-dependencies-1)
        - [Project packages](#Project-packages-1)
            - [First time](#First-time)
            - [Maintenance](#Maintenance)
    - [Run](#Run-1)
        - [Long commands](#Long-commands)
        - [Short commands](#Long-commands)


## Overview

This guide will help you do the following:

1. Clone a repo
2. Install `ruby`
3. Install Jekyll
4. Install `bundler` and install plugins (only if the repo uses plugins)
5. Build and serve the static site assets locally


## Setup repo

First, clone the static site repo.

```bash
$ git clone https://github.com/<USERNAME>/<REPO>.git
$ cd <REPO>
```

The rest of this guide is setup into two sections, to handle a site either [with](#b-project-with-a-gemfile) or [without](#a-project-without-a-gemfile) a Gemfile.

## A. Project without a Gemfile

The approach is to setup and run a repo which does not use a Gemfile to specify Jekyll plugins.

### Installation

#### System dependencies

1. Follow instructions under [Jekyll Guides](https://jekyllrb.com/docs/installation/#guides) for your OS to install or update `ruby`. This will make the `gem` command available.
2. Install the Jekyll gem at the user level. By default, this will install to the `~/.gems` directory.
    ```bash
    $ gem install --user-install jekyll
    ```

You can run the gem from anywhere now.

```bash
$ type jekyll
jekyll is hashed (/.../.gem/ruby/2.3.0/bin/jekyll)
```


#### Project packages

There are no project-specific gems to install, so you can jump to the run section.


### Run

Build to the `_site` directory and start the web server with this command. Note that `serve` can be replaced with `s`.

```bash
$ jekyll serve
```

If the `baseurl` is set in the config file such as for running on Github Pages under a subpath, then you might want to override it as below.

```bash
$ jekyll serve --baseurl ''
```

## B. Project with a Gemfile

The approach is to setup and run a repo which uses a Gemfile to specify Jekyll plugins.

### Installation

#### System dependencies

1. Follow instructions under [Jekyll Guides](https://jekyllrb.com/docs/installation/#guides) for your OS to install or update `ruby`. This will make the `gem` command available.
2. Install the Jekyll gem at the user level. By default, this will install to the `~/.gems` directory.
    ```bash
    $ gem install --user-install bundler jekyll
    ```

You can run the gems from anywhere now.

```bash
$ type jekyll
jekyll is hashed (/.../.gem/ruby/2.3.0/bin/jekyll)
$ type bundler
jekyll is /.../.gem/ruby/2.3.0/bin/jekyll
```


#### Project packages

##### First time

How to install project-specific gems, as set in the Gemfile.

By default, `bundle` will install gems in your gem directory (`~/.gems`). Rather ensure you isolate your gems environment for this project by using the deployment flag:

```bash
$ bundle install --deployment
```

That will create the following:

- `.bundle/config` - Short bundle config file. This can be versioned if you like.
- `vendor/bundle/` - A directory containing installed project gems. This directory should be added to your ignore file to avoid versioning it.

Alternatively, you can override the default path with your own.

```bash
$ bundle install --path <NEW_DIR_PATH>
```


##### Maintenance

You should now have `bundle` configured and all your project gems downloaded and installed. When you install from now on, `bundle` will know to look in the project directory.

```bash
$ cd <PATH_TO_REPO>
$ bundle install
```

That will install gems which have been added to the Gemfile and will upgrade any gems which have a version pinned to a higher version than the installed version. Note however that the install command is _conservative_, "refusing to update gems (or their dependencies) that you have not explicitly changed in the Gemfile", according to the [documentation](https://bundler.io/v2.0/guides/updating_gems.html),

To update gems and their dependencies to the _latest_ possible versions, use:

```bash
$ bundle update
```

That will still respect the versions of gems in Gemfile, if set.

To update to the latest version of a gem (even more recent than in your Gemfile), provide its name without a version.

```bash
$ bundle update <GEM_NAME>
```

### Run

### Long commands

The Jekyll commands here start with `bundle exec`, unlike the section for running without Gems.

Build to the `_site` directory and start the web server with this command. Note that `serve` can be replaced with `s`.

```bash
$ bundle exec jekyll serve
```

If the `baseurl` is set in the config file such as for running on Github Pages under a subpath, then you might want to override it as below.

```bash
$ bundle exec jekyll serve --baseurl ''
```

#### Shortcut commands

Rather than running the long commands above, you can use the scripts in the [dev](../dev] directory.

- **bin** You can add the scripts to the `bin` directory in your project, or `~/bin` directory for use across projects.
- **aliases** You can add the commands you want to your alias file.
