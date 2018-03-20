# Version List

## Next / Plan
- Gihub whitelist
- gem
- yap

## v.3.0.0

**SUMMARY**: Major performance improvement. Complete redesign. Beta Version.

## Beta
This is a beta version. Not fully tested.
LSI, permalinks not tested yet.

### Changes
- Improved performance, much faster, espacially with larger sites
- Smaller nav-breadcrumb.html include file (also less liquid code)
- Better support of Jekyll collections, pages and posts
- Complete redesign, not compatible with older breadcrumb setups 
- Example site via docker
- Supports Jekyll 3.7.3
- Renamed optional breadcrumb title (YAML), was breadcrumb is now crumbtitle
- Build in breadcrumb position number

### Update/Upgrade Advice:
- Rename YAML breadcrumb to **crumbtitle** in your files
- Copy breadcrumb plugin and nav-breadcrumb.html include file from lib directory to your repository
- Check the new way of integrating an icon as home breadcrumb in _includes/nav-breadcrumb-icon.svg

### Feedback
Any feedback is appreciated. Contact via Github.
We do not provide individual support. If your find issues about the plugin please create an [issue at Github](https://github.com/git-no/jekyll-breadcrumbs/issues).


#### External Links
[https://developers.google.com/search/docs/data-types/breadcrumbs](https://developers.google.com/search/docs/data-types/breadcrumbs)
[http://schema.org/BreadcrumbList](http://schema.org/BreadcrumbList)

---

## v.2.0.0
### Changes
- Reconstruction and simplifying of core plugin and breadcrumb include html
- Reduced dependencies to files
- Added example CSS included within nav-breadcrumb.html
- Added some more example pages
- Added option to enable/disable breadcrumbs on home page via _config.yml
- Added option to enable/disable image or text as root breadcrumb via _config.yml
- Removed SCSS template
- Removed translation plugin support
- Updated readme and installation description

### Fixes
- Collection breadcrumb items are not shown
- Several other bugs

---

## v.1.0.5

### Fixes
- Wrong folder name drops (could lead to plugin integration failures)

---

## v.1.0.4
**Summary**: improvements for first time installation.

### Changes
- Default root breadcrumb item is text (not image anymore).
- Default is now the plugin works out of the box without the language-plugin (previously without the language-plugin installed, building Jekyll failed without code modifications).

### Fixes
- Fix jekyll build error if YAML page.language is not set.
  `Liquid Exception: wrong argument type nil (expected Regexp) ...`
- Fix configuration description for integrating language-plugin.
- Fix CSS style for root breadcrumb item as text.

---

## v.1.0.3

### Enhancements
- Added icon example files
- Improved installation description
- Improved source code readability

### Fixes
- Resolved file name collision of style.css
- Fix naming of folder plugins

---

## v.1.0.2

### Features
- Support of breadcrumb item translation

### Fixes
- Fix translation of breadcrumbs with multiple items in a row
- Fix of breadcrumb style. Implemented CSS instead SCSS. Runs also without Twitter Bootstrap.

---

## v.1.0.1

### Bug Fixes
- Breadcrumb on root level (homepage) was visible in combination with page.language

---

## v.1.0.0

### Features
- Works with posts, pages and collections.
- HTML5 compliant and includes a HTML template for quick integration.
- SEO improved, implements Googles RDFA format.
- Works with Pretty Permalinks.
- Breadcrumb title can differ from page title.
- Hides breadcrumbs at root page.
- Skips language breadcrumb page.language if jekyll-language-plugin is in use.
- Icon for root level.
- Works as Jekyll Hook, does not require an additional Ruby GEM.
