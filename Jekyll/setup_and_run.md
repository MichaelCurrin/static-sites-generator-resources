# Setup and Run
> Guide to install and run a Jekyll static website, with or without Gems

Follow the instructions in this guide to setup and run a Jekyll site locally. It will use `ruby` to compile HTML and Markdown templates into HTML, avoiding duplication of code.

For instructions on how to create your own site, see the [Jekyll](https://jekyllrb.com) or [Github Pages](https://pages.github.com/) documentation.


**Table of Contents:**

- [Overview](#overview)
- [Requirements](#requirements)
- [Setup repo](#setup-repo)
- [A. Project without a Gemfile](#a-project-without-a-gemfile)
    - [Installation](#installation)
        - [System dependencies](#system-dependencies)
        - [Project packages](#project-packages)
    - [Run](#run)
- [B. Project with a Gemfile](#b-project-with-a-gemfile)
    - [Installation](#installation-1)
        - [System dependencies](#system-dependencies-1)
        - [Project packages](#project-packages-1)
            - [First time](#first-time)
            - [Maintenance](#maintenance)
                - [Install](#install)
                - [Upgrade](#upgrade)
    - [Run](#run-1)
        - [Long commands](#long-commands)
        - [Shortcut commands](#shortcut-commands)


## Overview

This guide will help you do the following:

1. Clone a repo.
2. Install Ruby.
3. Install _Jekyll_.
4. Install _Bundler_ and use it to install plugins. This is step is only needed if a repo has project dependencies.
5. Build and serve the static site assets locally.


## Requirements

| Name                                  | Description                                             |
| ------------------------------------- | ------------------------------------------------------- |
| [Ruby](https://www.ruby-lang.org/en/) | Used to install gems.                                   |
| [Jekyll](https://jekyllrb.com/)       | Builds static site.                                     |
| [Bundler](https://bundler.io/)        | Used to install project-scoped gems from the _Gemfile_. |


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

1. Install or update **Ruby** globally.
    - Go the [Installation Guides](https://jekyllrb.com/docs/installation/#guides) section of the Jekyll docs and follow the guide relevant for your OS.
    - For macOS _Catalina_ specifically, see this [guide](https://github.com/MichaelCurrin/learn-to-code/blob/master/Scripting%20languages/Ruby/README.md#macos) that I wrote.
    - Once _Ruby_ is installed, you can run the `ruby` and `gem` commands.
2. Install the **Jekyll** gem at the user level. By default, this will install to the `~/.gems` directory.
    ```bash
    $ gem install --user-install jekyll
    ```

You can run the Jekyll _gem_ from anywhere now.

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

The approach is to setup and run a repo which uses a Gemfile to specify project dependencies.

### Installation

#### System dependencies

1. Install or update **Ruby** globally.
    - Go the [Installation Guides](https://jekyllrb.com/docs/installation/#guides) section of the Jekyll docs and follow the guide relevant for your OS.
    - For macOS _Catalina_ specifically, see this [guide](https://github.com/MichaelCurrin/learn-to-code/blob/master/Scripting%20languages/Ruby/README.md#macos) that I wrote.
    - Once _Ruby_ is installed, you can run the `ruby` and `gem` commands.
2. Install the **Jekyll** gem at the _user_ level.
    - By default, this will install to the `~/.gems` directory. Note, this step is not needed for projects which install Jekyll as a project dependency.
    - Command:
        ```bash
        $ gem install --user-install jekyll
        ```
3. Install the **Bundler** gem, also at the _user_ level.
    - Command:
        ```bash
        $ gem install --user-install bundler
        ```

You can run the gems from anywhere now. For example:

```bash
$ type jekyll
jekyll is hashed (/.../.gem/ruby/2.3.0/bin/jekyll)

$ type bundler
jekyll is /.../.gem/ruby/2.3.0/bin/jekyll
```


#### Project packages

##### First time

How to install project-specific gems, as set in the Gemfile.

By default, `bundle` will install gems in your gem directory (`~/.gems`). Rather ensure you isolate your gems environment for this project a custom location. Below is the one recommended by `bundle`.

```bash
$ bundle install --path vendor/bundle
```

That will create the following:

- `.bundle/config` - Short bundle config file. This can be versioned if you like.
- `vendor/bundle/` - A directory containing installed project gems. This directory should be added to your ignore file to avoid versioning it.


##### Maintenance

You should now have `bundle` configured and all your project gems downloaded and installed. When you install from now on, `bundle` will know to look in the project directory.

###### Install

After the initial command run above with the path, only this needs to be run later.

```bash
$ cd <PATH_TO_REPO>
$ bundle install
```

That will install gems which have been added to the Gemfile and will upgrade any gems which have a version pinned to a higher version than the installed version.

###### Upgrade

Note however that the install command is _conservative_, "refusing to update gems (or their dependencies) that you have not explicitly changed in the Gemfile", according to the [documentation](https://bundler.io/v2.0/guides/updating_gems.html),

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

#### Long commands

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
