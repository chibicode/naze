---
layout: post
title: "Use Keynote for Open Graph Images"
tags: ["1404-April 2014"]
image_path: "keynote-open-graph-image/keynote.png"
---

Most posts on my Japanese blog have a nice open graph/Twitter cards image, which includes the exact same text as the post title. On the screenshots below, the pink part is the title, which is also displayed in the corresponding image.







I wish there was a script that does this automatically, but for the time being, I use Keynote to create them quickly for every post.



Each time I make a new one, I export all of the images to the *same* folder, overwriting existing images with the same set of images.



I use Jekyll, so I can simplify specify the filename of each image on the post's YAML front matter:

```yaml
---
...
og_image: "/exports/keynote-filename.005.jpg"
...
---
```

And use `{% raw %}{{ site.github.url }}{{ post.og_image }}{% endraw %}` in `<head>` tag. Enjoy!
