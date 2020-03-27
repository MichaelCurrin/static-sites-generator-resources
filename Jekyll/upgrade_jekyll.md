# How to upgrade Jekyll

[Upgrading from 3.x to 4.x](https://jekyllrb.com/docs/upgrading/3-to-4/) tutorial on the Jekyll docs.

One way to use the latest Jekyll is to specify in the `Gemfile` for the project.

```ruby
gem 'jekyll', "~> 4.0.0"
```

```sh
$ bundle install
```

When installing that, you'll see this message:

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
