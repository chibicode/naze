---
layout: post
title: Teaching Someone to Code is Partly a Hardware Problem
featured: true
image_path: "teaching-code-hardware-problem/1.jpg"
tags: ["1308-August 2013"]
see_also: ["/mario-kart"]
---

(Note: this article was originally [posted to Medium](https://medium.com/what-i-learned-building/fe6a2067d770).)

I taught [my girlfriend](https://twitter.com/ellekasai) to code from April to July of this year. My biggest takeaway: I realized that teaching someone to code is partly a hardware problem. [Codecademy](http://www.codecademy.com/), [Khan Academy](http://ejohn.org/blog/introducing-khan-cs/), [Scratch](http://scratch.mit.edu/) and others have optimized code editors for teaching purposes, but code editors will always be stuck with their software incarnations. I suggest that, in addition to supplying great software and teaching content, we should pair novice coders with great hardware.

## Background

I studied Computer Science at Carnegie Mellon, where I [taught](http://www.cs.cmu.edu/~scsfacts/uesugi.html) a few CS classes. My coding skill is mediocre at best, but I was good enough to become a product designer at companies like [Quora](http://www.quora.com/).

A little over a year ago, I met my girlfriend in Japan, where she spent most of her life. She studied Marketing and Japanese Culture at a women’s college in Tokyo. At the time we met, she worked as a sales associate at a payments startup, also in Tokyo.

But she always wanted to become a designer of some sort. Since she had a passion for software and an eye for usability, I suggested her a career in software product design.

[Lagging a few years](http://www.quora.com/Questions-That-Contain-Assumptions/Why-is-the-design-of-many-Japanese-websites-so-different-from-the-US) behind the western counterparts, Japanese tech communities only recently began to value design and user experience. The supply of product designers in Japan is still low, so I figured my girlfriend would have a shot at becoming one, even if she doesn’t have a formal education in design.

Convinced, she quit her job in April and visited me in the San Francisco Bay Area. We lived together for three months, and in my spare time, I taught her the basics of becoming a product designer. She worked hard, hoping to get a position in product design by the time she flies back to Tokyo.

## Teaching my girlfriend to code

I believe that all software product designers need to code. As to why, please read [Web designers should do their own HTML/CSS](http://37signals.com/svn/posts/1066-web-designers-should-do-their-own-htmlcss) and [Learning Rails made me a better designer](http://37signals.com/svn/posts/3451-learning-rails-made-me-a-better-designer), both by 37signals.

As you might have guessed, my girlfriend had never coded in her life. I thought this would be the biggest road block in her training, even more so than photoshop or other design skills, so we decided to focus on coding first.

We started with HTML/CSS, and later moved onto [Jekyll](http://jekyllrb.com/)/[SCSS](http://sass-lang.com/). She went from zero to being able to design a [blog theme](https://github.com/ellekasai/shinayaka) and [a gallery of her model photos](http://promo.ellekasai.com/), both written in Jekyll/SCSS.

Because she only has elementary fluency in English, she had limited options of learning resources, both [online](http://learn.shayhowe.com/html-css/) and [in print](http://htmlandcssbook.com/). I didn’t like any of the beginner HTML/CSS books or tutorials written in Japanese, so I created my own textbook just for her (screenshot below).



I plan to translate my textbook to English and publish it someday, but for now, I’d like to talk about the biggest surprise I had encountered: what helped my girlfriend the most was not the *quality* of my tutorial, but the *hardware* she used to complete my tutorial.

## The hardware problem #1: Monitors

After my girlfriend learned the basics, I asked her to use HTML/CSS to *replicate* or *trace* well-designed websites that I hand-picked. Her replica must look identical to the original, and its HTML must be semantic.

An ideal way to learn coding is to [work on a real project](http://blog.zackshapiro.com/want-to-learn-to-code-start-here). But because she didn’t have a site she wanted to build, copying well-designed websites, including [Medium](https://medium.com/) and [Svbtle](http://svbtle.com/), was the best next alternative.

Initially, she was using my old 23-inch monitor and the monitor on her Macbook Air, but she quickly ran out of the screen space. Apparently, she needed the following five windows open simultaneously:



1. *A Chrome window* displaying the actual website to replicate (top right).
2. *A Chrome window* displaying her current replica of the website, which is just a local HTML file (top left).
3. *A Sublime Text 2 window*, split into a HTML view and a CSS view. Bottom left on the cover image .
4. *An Evernote window* containing her notes and snippets (bottom right).
5. *A GitHub for Mac window* to keep track of the changes she’s made. I plugged GitHub into her workflow from day one so that I can review her code using pull requests (on the laptop screen).

Each window required approximately 1280x800 pixels. I ended up renting out to her my 30-inch cinema display, whose 2560x1600 pixels resolution was large enough to tile four of the five windows listed above. The last window fit on her laptop. She used [Moom](http://manytricks.com/moom/) for window management.

Why did she need these windows visible at the same time? Because novice coders would like to see the results of a code change right away.

Brett Victor, on his remarkable [Learnable Programming](http://worrydream.com/LearnableProgramming/) piece, suggested a “create by reacting” teaching technique:

> The create-by-reacting way of thinking could be stated as: start with something, then adjust until it’s right.

And that’s essentially what girlfriend was doing. She:(1) examines the target page, (2) writes code to mimic the target page, (3) checks to see if her version became closer-looking to the target page, and (4) repeats steps 1~3 until the target page and her version look identical.

Between steps 2 and 3, [CodeKit](https://incident57.com/codekit/) runs and refreshes the browser, so the result of a code change is immediately visible without hitting &#8984;+R. She uses GitHub for Mac to undo changes. On every iteration, she takes down notes on Evernote to avoid making the same mistakes twice.

This is why all five windows had to be open at once—to minimize the overhead between each step. She can react faster when everything is visible.

I can hear you hackers scream: “Don’t be a wimp. She can use &#8984;+number or &#8984;+tab.” True, but most novice coders suck at tab or window switching. We can teach them the tricks, but they probably won’t execute those shortcuts the way they want, at least in the beginning. Novices shouldn’t have to take on unnecessary cognitive load like this.

My girlfriend soon refused to code without the 30-inch monitor. My apartment is a short bike ride away from downtown Palo Alto, which has lots of Wifi-enabled coffee shops. But she stayed home pretty much all the time, just to make use of the monitor. She sounds like a spoiled student, but she did get much faster at coding, and she eventually mastered &#8984;+number and &#8984;+tab.



If you think about it, [even us hackers like to use bigger monitors](http://sef.kloninger.com/2012/05/engineering-culture-litmus-tests/):

> A story from a prior company. I was an engineering manager that had a retention problem. One of the engineers on my team quit to go to a smaller, hipper company. This was from my exit interview:
>
> Me: why are you leaving?<br>
> Him: because they have bigger monitors.

So why not give bigger monitors to novices too? They’re the biggest beneficiaries of constant, visual feedbacks, and they struggle with window management the most.

No matter how reactive code editors become, they can’t beat the limits of screen real estate—the very same reason why the market for tablets exists even in the era of smartphones.

## The hardware problem #2: Keyboards

For non-coders, their keyboards—or typing in general—can also be a bottleneck, albeit a small one.

Ask yourself: outside of your code editor, how often do you type characters like `<`, `>`, `{`, `}`, or `#`? Or whip out ctrl+shift+w, which stands for “Wrap selection in a tag” on Sublime Text? Not very often. That’s why non-coders are unfamiliar with and slow at hitting those keys.

I would sit next to my girlfriend when she coded, and every time she missed an opportunity to use a keyboard shortcut, I would point it out. She would write down the shortcut on a post-it note, stick it to the monitor, and try to be conscious of it. But day after day, she kept missing those shortcuts.

Then I found out that she never learned which finger is used for which keys. She just used whatever finger that felt natural at the moment. She could touch type common words, but when I asked her to type `{` for example, she had to look at the keyboard. She was also used to [the Japanese keyboard layout](http://en.wikipedia.org/wiki/File:KB_Japanese.svg), which didn’t help either.



To fix her habit, she bought a [Microsoft Natural Ergonomic Keyboard 4000](http://www.amazon.com/Microsoft-Natural-Ergonomic-Keyboard-4000/dp/B000A6PPOK), which makes it challenging to type if she doesn’t use the correct fingers. She also worked on [Peter’s Online Typing Course](http://www.typing-lessons.org/) lessons every day. By the time she finished the first ten lessons, she was typing like a real coder. She now rarely mis-enters keyboard shortcuts.

By the way, there’s another litmus test to check if a novice coder has a typing issue: [buy him/her an unlabeled keyboard](http://www.daskeyboard.com/product/model-s-ultimate/). If this slows him/her down, there’s an issue.

Frictions in typing may hinder some novice coders from achieving mastery. As they type more code, their frustration and inefficiency will compound. It’s might be outside of our imagination for us seasoned hackers, but let’s be aware of this problem when we talk about coding education.

## Conclusion

For my girlfriend, the two simple pieces of hardware—a monitor and a keyboard—had a huge impact. They probably influence most novice coders too. Code editors will become snappier, and coding curriculums will evolve, but they won’t ever expand into the domain of hardware.

As Andy Hunt illustrated on his excellent [Pragmatic Thinking and Learning book](http://www.amazon.com/Pragmatic-Thinking-Learning-Refactor-Programmers/dp/1934356050), novices aren’t just a slower, uninformed version of experts. They think completely differently. Once you become even an advanced beginner, you lose an ability to think like a novice. You might say “I don’t see why she needs those windows open concurrently.” But the more correct way of saying it is to state only the fact: “She needs those windows open concurrently.” There’s no way for you to “see it” of course, if you’ve lost the ability to think like a novice.

My girlfriend went back to Japan in July. She soon found a part time gig as a junior designer at a startup in Tokyo. I hope our hardware investment paid off. Thanks for reading.

**Update (8/19)**: I admit that *coding*, which is the topic of this article, is not equivalent to *programming*. Programming involves control logic, whereas coding may not.

My girlfriend did use some control logic with Jekyll/SCSS though, and she’s currently studying JavaScript, which is a real programming language. At some point, I will share lessons learned from teaching her *programming*.

Also, someone commented on [Hacker News](https://news.ycombinator.com/item?id=6235565):

> I think this is a very specific example of trying to learn HTML/CSS and copying a website. For someone trying to learn Python or C or Java might not require such a huge monitor.

Totally agree. I should have mentioned this, as I learned Java and C before any other languages. Nowadays though, many people seem to be learning to code by building web or mobile apps. In that case, a bigger monitor definitely helps. They might be writing JavaScript instead of copying websites, but having an extra room for a web inspector window will come in handy.

Finally, this article was featured by Medium:

<blockquote class="twitter-tweet" data-cards="hidden" lang="en"><p>“Teaching Someone To Code Is Partly A Hardware Problem” by <a href="https://twitter.com/chibicode">@chibicode</a> <a href="https://t.co/rfiyUbHIPW">https://t.co/rfiyUbHIPW</a></p>&mdash; Medium (@Medium) <a href="https://twitter.com/Medium/statuses/369550937817235456">August 19, 2013</a></blockquote>
