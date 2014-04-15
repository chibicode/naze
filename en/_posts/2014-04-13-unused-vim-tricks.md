---
layout: post
title: "Unused Vim Tricks"
tags: ["1404-April 2014"]
---

I've been using Vim for the past 3 years. There are lots of tips and tricks I've tried but ended up *not* using. Instead of just deleting from Vimrc, I decided to share them here. This post is a work in progress.

## My current .vimrc

You can find my current `.vimrc` [here](https://github.com/chibicode/vimrc/blob/master/vimrc.vim).

## Plugins I stopped using

These are all *great* plugins. I just wanted to keep my .vimrc minimal, harnessing as much default settings as possible.

* **[lightline.vim](https://github.com/itchyny/lightline.vim)** — A light and configurable statusline/tabline for Vim.

    *Why not?* I switched from [airline](https://github.com/bling/vim-airline) once, but didn't see much benefit, so I switched back.

* **[thumbnail.vim](https://github.com/itchyny/thumbnail.vim)** — A thumbnail-style buffer selector for Vim.

    *Why not?* Too overkill for me.

* **[tabman.vim](https://github.com/kien/tabman.vim)** — Tab management for Vim.

    *Why not?* Too overkill for me.

* **[vim-signature](https://github.com/kshenoy/vim-signature)** — Plugin to toggle, display and navigate marks.

    *Why not?* I don't use marks. They're a pain to keep track of, and I try to keep my files small.

* **[vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)** — A Vim plugin for visually displaying indent levels in code.

    *Why not?* I use terminal vim, and didn't work so great in it.

* **[Delimitmate](https://github.com/Raimondi/delimitMate)** — Provides insert mode auto-completion for quotes, parens, brackets, etc.

    *Why not?* I liked [auto-pairs](https://github.com/jiangmiao/auto-pairs) better.

* **[dragvisuals](https://github.com/atweiden/vim-dragvisuals)** — Move around visual blocks.

    *Why not?* From [More Instantly Better Vim](https://www.youtube.com/watch?v=aHm36-na4-4). I use this feature a lot in Sublime Text, but not in Vim for some reason.

* **[clever-f.vim](https://github.com/rhysd/clever-f.vim)** — Extended f, F, t and T key mappings for Vim.

    *Why not?* Great plugin, but [Easymotion](https://github.com/Lokaltog/vim-easymotion) covers my needs.

* **[vim-skip](https://github.com/jayflo/vim-skip)** — Simple movement script for Vim.

    *Why not?* Great plugin, but [Easymotion](https://github.com/Lokaltog/vim-easymotion) covers my needs.

* **[vim-startify](https://github.com/mhinz/vim-startify)** — A fancy start screen for Vim.

    *Why not?* I stopped using sessions.

* **[vim-signify](https://github.com/mhinz/vim-signify)** — Show a VCS diff using Vim's sign column.

    *Why not?* I use [vim-gitgutter](https://github.com/airblade/vim-gitgutter) instead, but forgot why I made that choice.

* **[vim-unstack](https://github.com/mattboehm/vim-unstack)** — Vim plugin for parsing stack traces and opening the files

    *Why not?* Awesome plugin, but my stack traces have never been too complicated.

* **[vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs)** — NERDTree and tabs together in Vim, painlessly

    *Why not?* Useful plugin if you use NERDTree heavily. I try to limit the usage of NERDTree, so wasn't too useful.

* **[dwm.vim](https://github.com/spolu/dwm.vim)** — Tiled Window Management for Vim

    *Why not?* Great plugin and used it for a really long time. I've since switched to [GoldenView.vim](https://github.com/zhaocai/GoldenView.Vim).

* **[thoughtbot/vim-rspec](https://github.com/thoughtbot/vim-rspec)** — Run Rspec specs from Vim

    *Why not?* [dispatch.vim](https://github.com/tpope/vim-dispatch) did most of what I needed.

* **[splitjoin.vim](AndrewRadev/splitjoin.vim)** — A vim plugin that simplifies the transition between multiline and single-line code

    *Why not?* Seemed useful, but didn't use it enough.

* **[trailertrash.vim](https://github.com/csexton/trailertrash.vim)** — Identify and Irradicate unwanted whitespace at the end of the line

    *Why not?* Switched to [vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace).

* **[Buffet.vim](https://github.com/sandeepcr529/Buffet.vim)** — A vimplugin for switching and managing buffer lists

    *Why not?* Switched to [Vim-CtrlSpace](https://github.com/szw/vim-ctrlspace).
    
* **[open-browser.vim](https://github.com/tyru/open-browser.vim)** — Open URI with your favorite browser from your favorite editor

    *Why not?* Used this mainly for markdown files, but I now use Sublime Text for editing markdown.

* **[mru.vim](https://github.com/yegappan/mru)** — Most Recently Used (MRU) Vim Plugin

    *Why not?* Again, switched to [Vim-CtrlSpace](https://github.com/szw/vim-ctrlspace).

* **[wildfire.vim](https://github.com/gcmt/wildfire.vim)** — Smart selection of the closest text object

    *Why not?* Switched to [vim-expand-region](https://github.com/terryma/vim-expand-region) in favor of repeating capabilities.

* **[Gundo.vim](https://github.com/sjl/gundo.vim/)** — Vim plugin to visualize your Vim undo tree.

    *Why not?* Switched to [undotree](https://github.com/mbbill/undotree).

* **[rainbow_parentheses.vim](https://github.com/kien/rainbow_parentheses.vim)** — Color matching parentheses

    *Why not?* MatchPren was good enough for me.

* **[vim-yankstack](https://github.com/maxbrunsfeld/vim-yankstack)** — A lightweight implementation of emacs's kill-ring for vim

    *Why not?* I switched from [YankRing](https://github.com/vim-scripts/YankRing.vim), but ended up just using registers.

* **[Enchanted Vim](https://github.com/coot/EnchantedVim) — Persistent Very Magic Patterns in Vim Commands.

    *Why not?* I didn't use very magic often.

* **Syntax Files**

    *Why not?* Switched to [vim-polygot](https://github.com/sheerun/vim-polyglot).

