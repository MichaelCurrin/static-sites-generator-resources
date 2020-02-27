# Build and Run Help
> Tips for using the build and run commands.

Note: If you want to run local _Jekyll_ installation through _bundle_, then run the following instead throughout this.

```bash
bundle exec jekyll COMMAND
```

If you want `serve` or `build` command, _Jekyll_ will build a site to an unversioned `_site` directory. 

For local development, it is often convenient to run the `serve` command, which also start webserver so you can view the site in the browser.

- http://localhost:4000

## Serve

### Auto regeneration

Auto regeneration is on by default when running the Jekyll `serve` command. If you make changes to a file, the `_site` directory will be cleared and rebuilt.

This is only by default with the `--watch` command. You can disable this.

```bash
$ jekyll serve --watch
$ jekyll serve --no-watch
```

#### Use with CMS

Note however that if the _Jekyll Manager_ plugin is installed and in your Gemfile, then the `serve` log will tell you that auto regeneration is disabled. Therefore the site will only be rebuilt after edits through the admin view (or if you stop and start the server).

If you _do_ want to enable auto regeneration, then disable the plugin by commenting it out the [Gemfile](/Gemfile) and restarting the server. Note that you do not need run an install command again so see changes.

Despite the log output telling you that you can use the `--watch` flag, this does not work when this plugin is active.


### Live reload

Use the `-l` or `--livereload` flag to reload the browser window automatically after making changes to files.

```bash
$ jekyll serve -l
```

#### Use with CMS

Note that this flag is not compatible with the _Jekyll Manager_ plugin as it causes a thread lock error.


### Serve on dev server

Flags to use with the `serve` command when serving on a development server (based on _Foresty.io_ site settings).

Set port and host:

```sh
--port 8080 --host 0.0.0.0
```

Preview posts which would not be publically visible yet if deployed on a Prod env.

```bash
$ --drafts --unpublished --future
```

Build to a different output directory:

```sh
-d DIR_NAME
```

## Environments

_Jekyll_ defaults to building a development site. If you build a production site, some things will behave differently, such as Google Analytics snippet you only want on production.

Set the `JEKYLL_ENV` environment variable to set the build environment. This works with the `serve` and `build` commands.

```bash
JEKYLL_ENV=production jekyll serve
```
