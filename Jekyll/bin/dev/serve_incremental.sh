#!/bin/bash
# Build and serve on the root path, only rebuilding files that changed.
#
# Use Jekyll's experimental incremental regeneration feature to reduce the build time
# when watching for changes to files. This is useful for testing changes quickly.
#
# Note that if updating a collection or post item, its excerpt in a stream on another page might
# not update until you update that page or layout, so use this with caution when testing.
# https://jekyllrb.com/docs/configuration/incremental-regeneration/

bundle exec jekyll serve --baseurl '' --incremental
