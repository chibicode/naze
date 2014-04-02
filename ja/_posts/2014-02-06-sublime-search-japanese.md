---
layout: post
title: Sublime Textの検索窓に日本語を入力する方法
ogi: "013"
tags: ["1402-February 2014"]
---

Sublime Textの検索窓に日本語を入力するとEnterを押すなり文字が消えてしまうのですが、無理やり解決する方法を見つけました。ググっても[こちらのバグレポート](http://sublimetext.userecho.com/topic/52165-unable-to-finalize-kana-kanji-conversion-in-japanese-in-the-search-box/)しか見つからなかったので報告です。

![](/assets/images/sublime-search-japanese/sublime-japanese-search-input.gif)

わたしの環境はMac OS XのSublime Text 3 (Build 3059)ですが、この解決方法はSublime Text 2 (Build 2220)にも対応しています。Windowsの場合は不明です。

### ステップ1: Sublime Text 3の場合のみ: Default (OSX).sublime-keymapを編集可能にする

このステップはSublime Text 3の場合のみ必要です。Sublime Text 2の場合はステップ2に行って下さい。

PreferencesからKey Bindings - Defaultを開き、表示されたDefault (OSX).sublime-keymapの内容を全部コピーします。

![](/assets/images/sublime-search-japanese/default-key-bindings.png)

&#8984;+Nで新しくファイルを開き、先ほどコピーした内容をペーストし、&#8984;+Sで保存します。

保存ダイアログが出たら、シフトキーを押しながら&#8984;+Gと入力し、ボックスに~/Library/Application Support/Sublime Text 3/Packages/と入力します。

![](/assets/images/sublime-search-japanese/save-location.png)

このPackagesフォルダーの中に新しくDefaultフォルダーを作成します。

![](/assets/images/sublime-search-japanese/default-folder.png)

そのDefaultフォルダーの中にDefault (OSX).sublime-keymapとして保存します。

![](/assets/images/sublime-search-japanese/default-folder-2.png)

### ステップ2: 該当箇所をコメントアウト

Sublime Text 2の場合は、PreferencesからKey Bindings - Defaultを開きます。

![](/assets/images/sublime-search-japanese/default-key-bindings.png)

Sublime Text 3の場合は、さきほど保存したDefault (OSX).sublime-keymapを開きます。

そして`Find panel key bindings`と書かれている行を探します。

~~~javascript
// Find panel key bindings
{ "keys": ["enter"], "command": "find_next", "context":
 [{"key": "panel", "operand": "find"}, {"key": "panel_has_focus"}]
},
~~~

その下3行の始めに`//`と入力してコメントアウトします。

~~~javascript
// Find panel key bindings
// { "keys": ["enter"], "command": "find_next", "context":
//  [{"key": "panel", "operand": "find"}, {"key": "panel_has_focus"}]
// },
~~~

その下の`Replace panel key bindings`と`Incremental find panel key bindings`の下3行それぞれも同様にコメントアウトします。

~~~javascript
// Replace panel key bindings
// { "keys": ["enter"], "command": "find_next", "context":
//  [{"key": "panel", "operand": "replace"}, {"key": "panel_has_focus"}]
// },
~~~

~~~javascript
// Incremental find panel key bindings
// { "keys": ["enter"], "command": "hide_panel", "context":
//  [{"key": "panel", "operand": "incremental_find"}, {"key": "panel_has_focus"}]
// },
~~~

この状態でファイルを保存すると日本語で検索できるようになります。

![](/assets/images/sublime-search-japanese/sublime-japanese-search-input-success.gif)

この方法の欠点として、次の検索結果をEnterで表示することができなくなります。代わりに&#8984;+Gを使うようにしましょう。

### 注意事項: 複数ファイルを検索しようとすると失敗します

Shiftキーを押しながら&#8984;+Fを押すと現在開いているフォルダーやファイル内から文字列を検索するパネルが出るのですが、ここでは先ほどの解決方法が機能しません。

![](/assets/images/sublime-search-japanese/find-all.png)

パネル名は`find_in_files`なのですが、Default (OSX).sublime-keymap内にはこのパネルを表示させるキーバインディングしかありません。`find_in_files`が`panel_visible`のときの`enter`キーの挙動を適当な`command`に上書きしてみようと試みたものの、失敗に終わってしまいました。Sublime Text自体に挙動が組み込まれているようですね。

日本語で複数ファイルを検索するときは、

1. &#8984;+Fで検索したい日本語をあらかじめ入力
2. 入力できたら、Shiftキーを押しながら&#8984;+Fで複数ファイル検索に切り替える
3. Enterキーを押す

とするしかないようです。#1すら不可能だった時に比べればマシかと思います。

### おまけ: Tabキーでかな漢字変換の変換候補を選べるようにする

かな漢字変換の際にTabキーで変換候補を選ぶことができない問題も同じように解決することができます。([参考URL](http://kazshu.hatenablog.com/entry/20120718/1342623780))

![](/assets/images/sublime-search-japanese/sublime-japanese-select.gif)

先ほどのファイル(Default (OSX).sublime-keymap)で、`"keys": ["tab"], "command": "insert_best_completion"`と検索します。見つからない場合は`insert_best_completion`と検索してみてください。

そして下記の行を次のようにコメントアウトして保存します。

~~~javascript
// { "keys": ["tab"], "command": "insert_best_completion", "args": {"default": "\t", "exact": true} },
// { "keys": ["tab"], "command": "insert_best_completion", "args": {"default": "\t", "exact": false},
//  "context":
//  [
//    { "key": "setting.tab_completion", "operator": "equal", "operand": true }
//  ]
// },
~~~

これでTabキーで次候補を選べます。ただし、Tabキーが使えるのはあくまで「次候補を選ぶとき」なので、一度目の変換はスペース(もしくは変換)キーを押さないといけませんのでご注意を。

![](/assets/images/sublime-search-japanese/sublime-japanese-select-success.gif)

Tabキーでコード補完ができなくなるので、Ctrl+Spaceなどを使わないといけないのが欠点です。

### おまけ: この記事の英語訳

ありがとうございました!

<blockquote class="twitter-tweet" lang="en"><p><a href="https://twitter.com/chibicode">@chibicode</a> Sublime Text の解決方法本当にありがとうございました！！僕のブログに英語でちょっと訳しました <a href="http://t.co/XlCjucBOwb">http://t.co/XlCjucBOwb</a></p>&mdash; Keitaroh Kobayashi (@keichan34) <a href="https://twitter.com/keichan34/statuses/431649160165466113">February 7, 2014</a></blockquote>

### おまけ: Gifアニメーションの作成方法

Gifアニメーションの作り方ですが、わたしは[ScreenFlow](http://www.telestream.net/screenflow/overview.htm)で撮ったmp4ファイルを[Gif Brewery](http://gifbrewery.com/)でgifファイルに変換しています。

この記事で使ったGif Breweryの設定は以下のとおりですが、完全に適当です。カラーパレットは動画ごとに変えることが多いです。ファイルサイズが大きくなってしまったら、[ImageOptim](http://imageoptim.com/)を使えば1割ほど節約できます。

![](/assets/images/sublime-search-japanese/gif-brewery.png)

最近はReadme.mdなどにもGifアニメーションが使われていますね([使用例](https://github.com/fphilipe/PHFComposeBarView))。下のようにYouTubeビデオの宣伝にも使えます。音声無しの自動再生ができますからね。

![](http://f.cl.ly/items/2x0g0g3O1n2A180Y3I1s/video.gif)

(動画リンク:[HTMLとCSSを学び始めたばかりの人にオススメの「HTMLスケッチ」](/post/73885599344/html-css-html-by-ellekasai/))
