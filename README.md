# jekyll-breadcrumbs
## Overview
Smart and fast breadcrumbs for posts, pages and collections with SEO support optional translation support. Works as [Jekyll Hook](https://jekyllrb.com/docs/plugins/#hooks) with [Jekyll](https://jekyllrb.com) 3.x.

![Breadcrumb Example](https://github.com/git-no/jekyll-breadcrumbs/blob/master/breadcrumb-example.png)  

### Features

- Works with posts, pages and collections.
- HTML5 compliant and includes a HTML template for quick integration.
- SEO improved, implements [Googles RDFA format](https://developers.google.com/structured-data/breadcrumbs).
- Works with Pretty Permalinks.
- Breadcrumb title can differ from page title.
- Hides breadcrumbs at root page.
- Supports translated breadcrumb caption if [jekyll-language-plugin](https://github.com/vwochnik/jekyll-language-plugin) is in use. jekyll-breadcrumbs works also without the jekyll-language-plugin.
- Supports an icon as root level breadcrumb item.
- Supports Twitter Bootstrap 4 (works also without Twitter Bootstrap).
- Works as [Jekyll Hook](https://jekyllrb.com/docs/plugins/#hooks), does not require an additional Ruby GEM.

#### Requirements
* Jekyll 3.x

### Installation

1. Download the latest [release](https://github.com/git-no/jekyll-breadcrumbs/releases) and unpack the file.

2. Copy the folders *_includes* and *_plugins* to your Jekyll repository.

  If you do not use jekyll-language-plugin you can or should skip the lang-tag.rb file (it translates breadcrumbs and requires [jekyll-language-plugin](https://github.com/vwochnik/jekyll-language-plugin)).
3. Copy the *breadcrumb-style.css* into your CSS directory and link the file within your HTML Header or copy the code into your existing CSS file.

### Configuration
1. Include the nav-breadcrumb.html in your Jekyll code where every you want to place the breadcrumbs by:
  ```
  {% include nav-breadcrumb.html %}
  ```

2. Integrate your icon as SVG into icon.svg or an image in icon.html. If you do not want an icon as home breadcrumb change the line in nav-breadcrumbs.html

  ```
  {% include icon.html class="breadcrumb-item" %}
  ```
  to
  ```
  <a class="breadcrumb-item" href="/">Home</a>
  ```

3. Use YAML *title* or *breadcrumb* to define the title of breadcrumb items.

  ```
  ---
  title: Legal and Terms
  ---
  ```  
  or if you already use YAML title
  ```
  ---
  title: Legal and Terms
  breadcrumb: Legal
  ---
  ```
  YAML *breadcrumb:* is optional and overrules YAML title, in case you want a different title in breadcrumb item as the page title.


## Note
* If you use [jekyll-language-plugin](https://github.com/vwochnik/jekyll-language-plugin) jekyll-breadcrumbs will translate each breadcrumb item if YAML *subset* in the page is set. If so this plugin will seek at first for *breadcrumb* within the subset of the language file, if breadcrumb is not found in the langauge file it will look for title within the subset.

## Contribution
This Jekyll plugin is an extension of the [Simple Breadcrumbs in Jekyll 3](https://envygeeks.io/2015/12/06/super-simple-breadcrumbs-in-jekyll-3-0/) from the [envygeeks](https://github.com/envygeeks). Thank you very much [envygeeks](https://github.com/envygeeks) for all the effort and Jekyll development. We love Jekyll.

## License

See the [LICENSE](https://github.com/jekyll/jekyll/blob/master/LICENSE) file.
