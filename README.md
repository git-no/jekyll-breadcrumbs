# jekyll-breadcrumbs
[Jekyll](https://jekyllrb.com) 3.0 breadcrumbs for posts, pages, collections with optional support of i18n and Twitter Bootstrap.

![Breadcrumb Example](https://github.com/git-no/jekyll-breadcrumbs/blob/master/breadcrumb-example.png)

## Overview
* Smart and fast breadcrumbs for posts, pages and collections.  
* Supports [jekyll-language-plugin](https://github.com/vwochnik/jekyll-language-plugin).   
* Comes also with a code example for design and footer integration and with support of Twitter Bootstrap - has also no problem without Twitter Bootstrap (probably you just have to add some additional CSS code but you still can use the integrated HTML template).

### Features

- Works with posts, pages and collections.
- HTML5 compliant and includes a HTML template for quick integration.
- SEO improved, implements [Googles RDFA format](https://developers.google.com/structured-data/breadcrumbs).
- Works with Pretty Permalinks.
- Breadcrumb title can differ from page title.
- Hides breadcrumbs at root page.
- Skips language breadcrumb ```page.language``` if [jekyll-language-plugin](https://github.com/vwochnik/jekyll-language-plugin) is in use.
- Icon for root level.
- Works as [Jekyll Hook](https://jekyllrb.com/docs/plugins/#hooks), does not require an additional Ruby GEM.

#### Requirements
* Jekyll 3.0

## Installation

1. Download the latest [release](https://github.com/git-no/jekyll-breadcrumbs/releases) and unpack the file.
- Copy the content of *_plugin* folder to your Jekyll repository *_plugin* folder.
- Copy *nav-breadcrumb.html* into your Jekyll repository *_include* folder.

### Configuration
1. No entry in *_config.yml* required.
* Include the nav-breadcrumb.html where every you want to place the breadcrumbs, e.g. within the footer ``` {% include nav-breadcrumb.html %} ```
* Use YAML *title* or *breadcrumb* to define breadcrumb title (title is default)

  ```
  ---
  title: Legal and Terms
  ---
  ```  
  YAML *breadcrumb:* option is optional and oversteers title, in case you want a different title in breadcrumb as in page title.
  ```
  ---
  title: Legal and Terms
  breadcrumb: Legal
  ---
  ```  
* Integrated the included SCSS file or create your own CSS.
* Integrate your icon as SVG or as Image. This example works with SVG simular with the *_include/icon-github.html* and *_include/icon-github.svg*.
Change the line in nav-breadcrumbs.html

  ```
  <li class="breadcrumb-item">{% include icon.html %}</li>
  ```
  to your icon.html file name or change it to use an image to
  ```
  <li class="breadcrumb-item"><img src="/your-image-path" alt="icon"></li>
  ```
For an image as root icon in breadcrumbs you probably have to update your css.

## Known Issues
* CSS without Twitter Bootstrap missing (feel free to contribute and develop CSS)
* Breadcrumbs are not translated in combination with [jekyll-language-plugin](https://github.com/vwochnik/jekyll-language-plugin).

## Contribution
This Jekyll plugin is an extension of the [Simple Breadcrumbs in Jekyll 3](https://envygeeks.io/2015/12/06/super-simple-breadcrumbs-in-jekyll-3-0/) from the [envygeeks](https://github.com/envygeeks). Thank you very much [envygeeks](https://github.com/envygeeks) for all the effort and Jekyll development. We love Jekyll.

## License

See the [LICENSE](https://github.com/jekyll/jekyll/blob/master/LICENSE) file.
