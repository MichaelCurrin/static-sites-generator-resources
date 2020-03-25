# Github data

When building a static site, Github API data for your profile and repos can be added using this plugin:

- [jekyll/github-metadata](https://github.com/jekyll/github-metadata)

Add it to to Gemfile and config plugins list as `jekyll-github-metadata`.

The plugin sets some other values in your config so you don't have to. Including site title, description and baseurl. Title is not so user-friendly, so you should set it manually using a value with titlecase and spaces.

If you do not set `baseurl`, then this will be the plugin's value:

- `/pages/MichaelCurrin/my-github-projects`

And it will be used in all your relative and absolute URLs (where using `relative_url` or `absolute_url` Liquid filters respectively).

If this default value causes an issue such as on Netlify, just set it to an empty value:

```yml
baseurl: ""
```

For more details on the values, see this [doc](https://github.com/jekyll/github-metadata/blob/master/docs/site.github.md).

## Auth


The plugin has the most functionality when use on Github Pages, as it authenticates to Github. 

On local build and Netlify it does REST API requests _without_ a token, which still returns plenty of usable data.

I haven't noticed any lack of functionality there. Except the rate hit for your IP is likely to be hit with frequent builds locally. Sample output:

```
   GitHub Metadata: No GitHub API authentication could be found. Some fields may be missing or have incorrect data.
   GitHub Metadata: GET https://api.github.com/repos/MichaelCurrin/my-github-projects: 403 - API rate limit exceeded for a.b.c.d. (But here's the good news: Authenticated requests get a higher rate limit. Check out the documentation for more details.) // See: https://developer.github.com/v3/#rate-limiting
   ...
```

You can also set a token to authorize, but this not straightforward.
