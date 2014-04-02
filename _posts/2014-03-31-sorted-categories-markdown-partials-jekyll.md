---
layout: post
title: "Sorted Categories and Including Markdown Partials on Jekyll"
categories: ["1403-March 2014"]
icon: "fa-github"
---

I recently created a [bare-bones Jekyll template](http://jekyll.chibi.io/), which includes a massive [Gruntfile](https://github.com/chibicode/jekyll-base-template/blob/gh-pages/Gruntfile.coffee) that does a lot of things (image minification, compiling Sass/Jade/coffeescript, autoprefixing/concatenating/uglifying, and other good stuff).

But I've also included two useful Jekyll snippets that I wanted to share:

## 1. Sorted Categories

If you `include` the following HTML file in Jekyll, the variable `sorted_categories` will become available:

{% gist 9926955 1-sorted-categories.html %}

Credit to [this Stackoverflow answer](http://stackoverflow.com/a/18221512/114157).

## 2. Markdown Partials

You can include a markdown partial (`_includes/*.md`) by creating `_includes/markdown.html` with the following content:

{% gist 9926955 2-markdown-partial.html %}

Credit to [this Stackoverflow question](http://stackoverflow.com/q/7226076/114157).

Enjoy!