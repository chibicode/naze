---
layout: post
title: "Jekyll Mixins for Jekyll/Liquid Tags"
tags: ["1404-April 2014"]
icon: "fa-github"
---

I chose [Jade](http://jade-lang.com/) template engine to generate HTML for this site. Jade lets you define [mixins](http://jade-lang.com/reference/#mixins), and I used it to prettify [Jekyll](http://jekyllrb.com/)/[Liquid](http://docs.shopify.com/themes/liquid-basics) tags.

Here are the mixins:

{% gist 9926119 1-liquid.jade %}

With those mixins in place, you can prettify these Liquid tags...

{% gist 9926119 2-before.jade %}

Like this:

{% gist 9926119 3-after.jade %}

To get this to work, you need to `include` this jade file to all other `*.jade` files. Instead of doing so manually, I used [Grunt](http://gruntjs.com/) to prepend the `include` line *before* Jade compilation happens, using [copy](https://github.com/gruntjs/grunt-contrib-copy) task's `process` option:

{% gist 9926119 4-Gruntfile.coffee %}

It'd be great if Jekyll has a compile option to specify files to be included for every page.
