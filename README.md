# Hubot Tofu-Changer

SlackにMacのクライントから文字を入れるとWindowsクライントで化ける問題(豆腐問題)で発生した化けた文字を正常な文章に変換してpostします。



Slack向けに動作します。

バックスペースの変換をRubyで行っているので、動作にはhubot以外にもrubyが動作する必要があります。

## Installation
### Add package.json

```
"dependencies": {
  "hubot-tofu-changer": "git://github.com/miyay/hubot-tofu-changer.git"
}
```

### Add external-scripts.json

```
[
  "hubot-tofu-changer"
]
```

### npm install

```
$ npm install
```
