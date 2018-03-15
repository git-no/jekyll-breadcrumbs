# Version Description

## Beta
This is a beta version. Not fully tested.
LSI, Permalink not tested yet.

### Change Log
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


