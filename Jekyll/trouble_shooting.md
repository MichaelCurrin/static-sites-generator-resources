# Trouble shooting


## Bundler version mismatch

When upgrading your Ruby version (such as with macOS Catalina update) and reinstalling Bundler, your projects can stop working. Especially if you use a lock file, but you've since installed with a different version of Bundler before which can't be found.

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

### Solution


1. Delete gems installed against the older Ruby version.
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
