# Y-Foundry Wiki Repository

Built with Github Pages and [Jekyll](https://jekyllrb.com/)

### Style Used:
[Just the Docs](https://just-the-docs.github.io/just-the-docs/)

### How to use Jekyll
[Step-by-Step Guide](https://jekyllrb.com/docs/step-by-step/02-liquid/)


## Setting up a documentation environment locally
First this:
https://jekyllrb.com/docs/installation/ubuntu/

then:
[Jekyll](https://jekyllrb.com/docs/step-by-step/01-setup/)

### Clone YFD-WIKI Repo
```git clone https://github.com/Y-Foundry-Dao/yfd-wiki.git```

### From the ```yfd-wiki``` directory
```bundle install```

```bundle exec jekyll serve --config _config_local.yml```


## For Reference

### Gemfile Contents 
```
# frozen_string_literal: true

source "https://rubygems.org"

# gem "rails"
gem "jekyll"
gem "github-pages"
gem "just-the-docs", "0.4.0.rc3"
gem "jekyll-seo-tag"
gem "webrick"
gem "jekyll-default-layout"
```