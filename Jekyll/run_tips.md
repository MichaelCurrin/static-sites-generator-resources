# Build and Run Help
> Tips for using the build and run commands.

Note: If you want to run local _Jekyll_ installation through _bundle_, then run the following instead throughout this.

```bash
bundle exec jekyll COMMAND
```

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

