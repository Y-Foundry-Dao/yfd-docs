# Y-Foundry Documentation Repository

Built with Github Pages and [Jekyll](https://jekyllrb.com/)

### Style Used:
[Just the Docs](https://just-the-docs.github.io/just-the-docs/)

### How to use Jekyll
[Step-by-Step Guide](https://jekyllrb.com/docs/step-by-step/02-liquid/)


## Setting up a documentation environment locally

## Pre-requestites ##

1. Git

2. Docker

### Clone YFD-DOCS Repo
```git clone https://github.com/Y-Foundry-Dao/yfd-docs.git```

### From the ```yfd-docs``` cloned repo directory

`make build`
To build the Docker Image and Container

*** 
`make start`
To launch the Documentation Service

Open a browser to [local documentation site](http://localhost:4000)

***

#### Other Commands

`make stop`

To stop the development environment

*** 
`make rebuild`
To rebuild the local development environment

***
`make clean`
To clean image and container files


*** 

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