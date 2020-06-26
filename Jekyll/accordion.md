# Accordion


## Details tag

Use the `details` and `summary` tags - these work on Github markdown, Jekyll, Docsify and others. No CSS or JS need.


### Simple use

```html
<details>
<summary><b>My title</b></summary>

My expanded details
</details>
```

<details>
<summary><b>My title</summary>

My expanded details
</details>


### Jekyll templating use

Create an includes file and use it on a page.

- `_includes/details.html` - or whatever name you like.
    ```html
    <details>
    <summary><b>{{ include.title }}</b></summary>

    {{ include.description }}
    </details>
    ```
- `index.md`
    ```markdown
    ---
    layout: null
    ---

    # Accordion test

    {% include details.html
        title = "This is my title"
        description = "This is my description"
    %}
    ```
    

## Plugin

See also [Creating an Accordion Plugin for Jekyll - No TV and No Beer 6](http://mikelui.io/2018/07/22/jekyll-nested-blocks.html) - this is a heavier approach which involves writing two Ruby plugins.


## CSS approach

Here is an approach which does not use Jekyll but the HTML can be adapted by using `for` loops.

- [Implementing A Pure CSS Collapsible](https://alligator.io/css/collapsible/)


- `index.html`
    ```html
    <div class="wrap-collabsible">
      <input id="collapsible" class="toggle" type="checkbox">
      <label for="collapsible" class="lbl-toggle">More Info</label>
      <div class="collapsible-content">
        <div class="content-inner">
          <p>
            QUnit is by calling one of the object that are embedded in JavaScript, and faster JavaScript program could also used with
            its elegant, well documented, and functional programming using JS, HTML pages Modernizr is a popular browsers without
            plug-ins. Test-Driven Development.
          </p>
        </div>
      </div>
    </div>
    ```
- `styles.css`
    ```css
    .wrap-collabsible {
      margin-bottom: 1.2rem 0;
    }

    input[type='checkbox'] {
      display: none;
    }

    .lbl-toggle {
      display: block;

      font-weight: bold;
      font-family: monospace;
      font-size: 1.2rem;
      text-transform: uppercase;
      text-align: center;

      padding: 1rem;

      color: #A77B0E;
      background: #FAE042;

      cursor: pointer;

      border-radius: 7px;
      transition: all 0.25s ease-out;
    }

    .lbl-toggle:hover {
      color: #7C5A0B;
    }

    .lbl-toggle::before {
      content: ' ';
      display: inline-block;

      border-top: 5px solid transparent;
      border-bottom: 5px solid transparent;
      border-left: 5px solid currentColor;
      vertical-align: middle;
      margin-right: .7rem;
      transform: translateY(-2px);

      transition: transform .2s ease-out;
    }

    .toggle:checked + .lbl-toggle::before {
      transform: rotate(90deg) translateX(-3px);
    }

    .collapsible-content {
      max-height: 0px;
      overflow: hidden;
      transition: max-height .25s ease-in-out;
    }

    .toggle:checked + .lbl-toggle + .collapsible-content {
      max-height: 100vh;
    }

    .toggle:checked + .lbl-toggle {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
    }

    .collapsible-content .content-inner {
      background: rgba(250, 224, 66, .2);
      border-bottom: 1px solid rgba(250, 224, 66, .45);
      border-bottom-left-radius: 7px;
      border-bottom-right-radius: 7px;
      padding: .5rem 1rem;
    }
    ```
