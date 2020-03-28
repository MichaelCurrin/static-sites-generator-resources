# Install Jekyll for a project

## 1. Install Bundler

Ensure you have [Bundler](https://bundler.io) installed for your user:

```sh
$ gem install --user-install bundler
```

## 2. Install Jekyll

Navigate to a project.

Specify the version in a `Gemfile`. 

For example:

```ruby
gem 'jekyll', "~> 4.0.0"
```

Then install.

```sh
$ # First time:
$ bundle install --path vendor/bundle

$ # On subsequent installs:
$ bundle install
```

When installing Jekyll 4, you'll see this message.

```
Jekyll 4.0 comes with some major changes, notably:

  * Our `link` tag now comes with the `relative_url` filter incorporated into it.
    You should no longer prepend `{{ site.baseurl }}` to `{% link foo.md %}`
    For further details: https://github.com/jekyll/jekyll/pull/6727

  * Our `post_url` tag now comes with the `relative_url` filter incorporated into it.
    You shouldn't prepend `{{ site.baseurl }}` to `{% post_url 2019-03-27-hello %}`
    For further details: https://github.com/jekyll/jekyll/pull/7589

  * Support for deprecated configuration options has been removed. We will no longer
    output a warning and gracefully assign their values to the newer counterparts
    internally.
```

For more details on differences from Jekyll 3, see the [Upgrading from 3.x to 4.x](https://jekyllrb.com/docs/upgrading/3-to-4/) tutorial on the Jekyll docs.


## 3. Run

Start a server using the project-level Jekyll

```sh
$ bundle exec jekyll serve
```
