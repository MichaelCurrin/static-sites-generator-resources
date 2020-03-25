# Github data

When building a static site, Github API data for your profile and repos can be added using this plugin:

- [jekyll/github-metadata](https://github.com/jekyll/github-metadata)

Add it to to Gemfile and config plugins list as `jekyll-github-metadata`.

The plugin has the most functionality on Github Pages. It also works on a local build and Netlify with some reduced functionality, but nothing that I have noticed. You can also set a token so it acts in those situations the same as if on Github Pages but this not straightforward.

The plugin sets some other values in your config so you don't have to. Including site title, description and baseurl. Title is not so user-friendly, so you should set it manually using a value with titlecase and spaces.

If you do not set `baseurl`, then this will be the plugin's value:

- `/pages/MichaelCurrin/my-github-projects`

And it will be used in all your relative and absolute URLs (where using `relative_url` or `absolute_url` Liquid filters respectively).

If this default value causes an issue such as on Netlify, just set it to an empty value:

```yml
baseurl: ""
```
