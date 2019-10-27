# Build and Run Help
> Tips for using the build and run commands.

Note: If you are using the local _Jekyll_ installation through _bundle_, then commands in this document you have `bundle exec` prepended.

## Serve

### Live reload

Use the `-l` or `--livereload` flag to reload the browser window automatically after making changes to files.

```bash
$ jekyll serve -l
```

Note that this flag is not compatible with the _Jekyll Manager_ plugin as it causes a thread lock error.
