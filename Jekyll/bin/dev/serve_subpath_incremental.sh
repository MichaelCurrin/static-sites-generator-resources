#!/bin/bash
# Build and serve on the configured subpath and alterate port, with incremental flag. This is
# useful for making small changes which don't affect the structure of the site.

bundle exec jekyll serve --port 5000 --incremental
