---
layout: post
title: "Solo: A Single Page Jekyll Theme"
image_path: "solo-jekyll-theme/solo.png"
tags: ["1401-January 2014"]
see_also: ["/markdown-toolbar-cheatsheet"]
---



I've created [Solo](http://solo.chibi.io/), a Jekyll theme that *only* supports single pages.

You might ask: "I thought [Jekyll](http://jekyllrb.com/) was a blog-aware static site generator. Why would anyone want to use it for a single page website?"

Because there is no way to host a *single* markdown file on GitHub pages other than using [the automatic page generator](https://help.github.com/articles/creating-pages-with-the-automatic-generator). The page generator is great, but it also generates a lot of unnecessary stuff (e.g. links to zip/tar files). I just wanted to display, without clutter, the contents of a markdown file. I could have used [Gist](http://gist.github.com/), but I wanted something prettier.

That's why I built Solo. I structured its Jekyll code such that, the content of `_includes/index.md` is converted to become `index.html`, which will be served by GitHub pages.

For example, [the page for Solo](http://solo.chibi.io/) is generated on the fly by [this markdown file](https://github.com/chibicode/solo/blob/gh-pages/_includes/index.md).

Solo allows you to rapidly create lots of simple single-page websites. Just clone [the repo](https://github.com/chibicode/solo), edit a few files, and push to GitHub. Hope you like it.
