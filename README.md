# jekyll-breadcrumbs

![Breadcrumb Example](https://github.com/git-no/jekyll-breadcrumbs/blob/master/breadcrumb-example.png)  


[![Gem Version](https://img.shields.io/gem/v/jekyll.svg)][ruby-gems]


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
- Supports Twitter Bootstrap 4 (works also without Twitter Bootstrap).

#### Requirements
* Jekyll 3.x


### Installation

1. **Download** the latest [release](https://github.com/git-no/jekyll-breadcrumbs/releases) and unpack the file.

2. **Copy** the content of folder **_plugins** into the same folder of your Jekyll repository. And copy at least the files nav-breadcrumbs.html, icon.html, icon.svg into your *_includes* folder.

3. **Include nav-breadcrumb.html** into your Jekyll code where ever you want to place the breadcrumbs, e.g. within your footer.html by insert this code:
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

##### Optional
1. Transfer the example CSS code from nav-breadcrumbs.html into your css file. Modify the css as your like.
2. If you want an icon as root sign in the breadcrumbs modify the file icon.svg.
3. Use YAML *title* or *breadcrumb* to define the title of breadcrumb items.

  ```
  ---
  title: Legal and Terms
  ---
  ```  
  or if you want a other text within the breadcrumb as the page title you can achieve this by adding the tag ```breadcrumb:``` in your YAML section of the page.
  ```
  ---
  title: Legal and Terms
  breadcrumb: Legal
  ---
  ```
  YAML *breadcrumb:* is optional and overrules YAML title, in case you want a different title in breadcrumb item as the page title.


## Example
If you are interessted how it look like, their is an example site included within folder *site*.


## Contribution
This Jekyll plugin is an extension of the [Simple Breadcrumbs in Jekyll 3](https://envygeeks.io/2015/12/06/super-simple-breadcrumbs-in-jekyll-3-0/) from the [envygeeks](https://github.com/envygeeks). Thank you very much [envygeeks](https://github.com/envygeeks) for sharing the code and thank you for all the Jekyll effort and development. We love Jekyll.


## License
See the [LICENSE](https://github.com/jekyll/jekyll/blob/master/LICENSE) file.


[ruby-gems]: https://rubygems.org/gems/jekyll
