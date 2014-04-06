---
layout: post
title: "An Intuitive Markdown Cheatsheet"
image_path: "markdown-toolbar-cheatsheet/clicked.png"
tags: ["1403-March 2014"]
---

{% include i.html i='toolbar.png' t='border' %}

I've created a markdown cheatsheet: [markdown.chibi.io](http://markdown.chibi.io/).

The main audience is non-technical people. They are used to MS Word, Google Docs, Evernote, Wordpress, etc., all of which have a toolbar like above. By showing a mapping from a toolbar icon to the corresponding markdown syntax, people will be able to learn Markdown faster.

Here's what happens when you click a button:

{% include i.html i='clicked.png' t='border' %}

Minor details: I've included buttons for <u>underlines</u> and <del>strikethroughs</del>. They're not supported by the base Markdown implementation, but beginnrs will be confused if those buttons don't exist.

{% include i.html i='underline_strikethrough.png' t='border' %}

I haven't added the `code/pre` syntax or GitHub Flavored Markdown stuff, because I found that non-technical people won't need them. To learn about these, visit GitHub's [markdown guide](https://guides.github.com/overviews/mastering-markdown/).

[markdown.chibi.io](http://markdown.chibi.io/) is built with Jekyll and the repo is at: [chibicode/markdown-toolbar-cheatsheet](https://github.com/chibicode/markdown-toolbar-cheatsheet). Enjoy!
