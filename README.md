# jekyll-breadcrumbs
[Jekyll](https://jekyllrb.com) 3.x breadcrumbs for posts, pages, collections with optional support of i18n and Twitter Bootstrap.

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
- Supports translated breadcrumb if [jekyll-language-plugin](https://github.com/vwochnik/jekyll-language-plugin) is in use. jekyll-breadcrumbs works also without the jekyll-language-plugin.
- Supports icon as root level breadcrumb item.
- Works as [Jekyll Hook](https://jekyllrb.com/docs/plugins/#hooks), does not require an additional Ruby GEM.

#### Requirements
* Jekyll 3.x

## Installation

1. Download the latest [release](https://github.com/git-no/jekyll-breadcrumbs/releases) and unpack the file.
- Copy the content of *_plugin* folder to your Jekyll repository *_plugin* folder. If you do not use jekyll-language-plugin you can or should skip the lang-tag.rb file (translates breadcrumbs).
- Copy *nav-breadcrumb.html* into your Jekyll repository *_include* folder.

### Configuration
1. Include the nav-breadcrumb.html where every you want to place the breadcrumbs ``` {% include nav-breadcrumb.html %} ```.
* Use YAML *title* or *breadcrumb* to define the title of breadcrumb items.

  ```
  ---
  title: Legal and Terms
  ---
  ```  
  YAML *breadcrumb:* is optional and overrules YAML title, in case you want a different title in breadcrumb item as the page title.
  ```
  ---
  title: Legal and Terms
  breadcrumb: Legal
  ---
  ```  
* If you use [jekyll-language-plugin](https://github.com/vwochnik/jekyll-language-plugin) jekyll-breadcrumbs will translate each breadcrumb item if YAML *subset* in the page is set. If so this plugin will seek at first for *breadcrumb* within the subset of the language file, if breadcrumb is not found in the langauge file it will look for title within the subset.
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
* Done. No entry in *_config.yml* required.

## Known Issues
* CSS without Twitter Bootstrap missing (feel free to contribute and develop CSS)

## Contribution
This Jekyll plugin is an extension of the [Simple Breadcrumbs in Jekyll 3](https://envygeeks.io/2015/12/06/super-simple-breadcrumbs-in-jekyll-3-0/) from the [envygeeks](https://github.com/envygeeks). Thank you very much [envygeeks](https://github.com/envygeeks) for all the effort and Jekyll development. We love Jekyll.

## License

See the [LICENSE](https://github.com/jekyll/jekyll/blob/master/LICENSE) file.
