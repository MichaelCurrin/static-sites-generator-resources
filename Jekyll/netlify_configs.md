# Netlify Configs

When setting up a project for Netlify, values are configured. Rather than setting them in Netlify itself, I prefer to set use a config file.

## Resources

- [File-based configuration](https://docs.netlify.com/configure-builds/file-based-configuration/) - from the Netlify docs.
- [Common configurations](https://docs.netlify.com/configure-builds/common-configurations/) - from the Netlify docs. This helps with setting command and publish commands for Hugo, etc.

## Sample content

For `netlify.toml` at the project root, use the base file below as a starting point and add other snippet pieces if needed.

### Base

```toml
[build]
  command = "jekyll build"
  publish = "_site"
```

Alternatively, if using a `Makefile`:

```toml
[build]
  command = "make build"
  publish = "_site"
```

### Environment

If you want Jekyll to build in production mode - for example the base URL value is used and Google Analytics can be enabled.

```toml
[build.environment]
  JEKYLL_ENV = "production"
```

### Headers

If you do API requests, you might have to set this to avoid CORS errors in the JS console.

```toml
[[headers]]
  # Allow embedding of external content.
  for = "/*"
    [headers.values]
    Access-Control-Allow-Origin = "*"
```
