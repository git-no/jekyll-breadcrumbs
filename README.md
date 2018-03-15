# jekyll-breadcrumbs

![Breadcrumb Example](https://github.com/git-no/jekyll-breadcrumbs/blob/master/breadcrumbs-example.png)  

[![Jekyll Version](https://img.shields.io/gem/v/jekyll.svg)][ruby-gems]


### Overview
Smart and fast breadcrumbs for posts, pages and collections with SEO support and more. Works as [Jekyll Hook](https://jekyllrb.com/docs/plugins/#hooks) with [Jekyll](https://jekyllrb.com) 3.x.

### Features

- Works with posts, pages and collections.
- Breadcrumb title can differ from page title.
- HTML5 compliant and includes a HTML template for quick integration.
- SEO improved, implements [Googles RDFA format](https://developers.google.com/structured-data/breadcrumbs).
- Works with Pretty Permalinks.
- Option to hides breadcrumbs on root page.
- Supports an icon as root level breadcrumb item.
- Works as [Jekyll Hook](https://jekyllrb.com/docs/plugins/#hooks), does not require an additional Ruby GEM.

#### Requirements
* Jekyll 3.x


### Installation

1. **Download** the latest [release](https://github.com/git-no/jekyll-breadcrumbs/releases) and unpack the file.

2. **Copy** the content of our folder **_plugins** into the same folder of your Jekyll repository. And copy at least the files nav-breadcrumbs.html, icon.html, icon.svg into your *_includes* folder.

3. **Include nav-breadcrumb.html**, **nav-breadcrumbs-icon.html** into your Jekyll code where ever you want to place the breadcrumbs, e.g. within your footer.html by insert this code:
```liquid
{% include nav-breadcrumbs.html %}
```


4. **Setup Jekyll _config.yml**. Copy this YAML code to you *_config.yml*
```yaml
breadcrumbs:
  root:
    hide: false  # show breadcrumbs on root/home page
    image: false # Show image or title text
```

5. If you want to use a icon instead of text as Home breadcrumb put your code into _include/nav-breadcrumbs.icon.svg (in case of svg file).

#### Optional
1. Transfer the example CSS code from nav-breadcrumbs.html into your css file. Modify the css as your like.
2. If you want an icon as root sign in the breadcrumbs modify the file icon.svg.
3. Use YAML *title* or *crumbtitle* to define the title of breadcrumb items.

  ```
  ---
  title: Legal and Terms
  ---
  ```  
  or if you want a other text within the breadcrumb as the page title you can achieve this by adding the tag ```crumbtitle:``` in your YAML section of the page.
  ```
  ---
  title: Legal and Terms
  crumbtitle: Legal
  ---
  ```
  YAML *crumbtitle:* is optional and overrules YAML title, in case you want a different title in breadcrumb item as the page title.


## Example
If you are interessted how breadcrumbs look like, their is an [example site included within folder site](https://github.com/git-no/jekyll-breadcrumbs/tree/master/site).


## For Developers
You can use breadcrumbs in your own html code.  
A breadcrumb is an array of crumb items within the actual page. Each crumb item represents a page/link and has two properties: url and title.  
To get crumb items use liquid in your code:

```html
{% for crumb in breadcrumbs %}
  <a href="{{ crumb.url }}">{{ crumb.title }}</a>
{% endfor %}
```

### Docker
Build site with docker

```
docker run --rm --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" -it -p 4000:4000 -p 35729:35729 jekyll/jekyll:3.7.3 jekyll serve --livereload
```

More information at [Docker at Github](https://github.com/envygeeks/jekyll-docker/blob/master/README.md)

## License
See the [LICENSE](https://github.com/jekyll/jekyll/blob/master/LICENSE) file.


[ruby-gems]: https://rubygems.org/gems/jekyll
