# Trouble shooting


## Bundler version mismatch

When upgrading your Ruby version (such as with macOS Catalina update) and changing Bundler version, your projects can stop working. Here is how to deal with that.

### Error

When running:

```sh
bundle install
```

Sample error:

```
...
your /Gemfile.lock. (Gem::GemNotFoundException)
To update to the latest version installed on your system, run `bundle update --bundler`.
To install the missing version, run `gem install bundler:2.0.1`
```

This happened because the lock file indicates:

```
BUNDLED WITH
   2.0.1
```

While `1.17.2` (old) is the global version.

### Solution

1. Delete gems installed against the older Ruby version. This may not actually be needed but is good for a clean install.
    ```sh
    rm -rf vendor/bundle/ruby/
    ```
2. Delete the lock file.
    ```sh
    rm Gemfile.lock
    ```
3. Install gems.
    ```sh
    bundle install
    ```
4. Test your project can start.
    ```sh
    jekyll serve
    ```
5. Commit your updated `Gemfile.lock` to version control if you usually version it (recommended).
