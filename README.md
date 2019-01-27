YAMLによる履歴書作成スクリプト [kaityo256/yaml_cv](https://github.com/kaityo256/yaml_cv) の実行環境
===

[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)
[![IPA Font License](https://img.shields.io/badge/license-IPA%20Font-green.svg)](fonts/IPA_Font_License_Agreement_v1.0.txt)

* [kaityo256/yaml_cv](https://github.com/kaityo256/yaml_cv) の実行に必要なライブラリが入った Docker コンテナです
* フォントは [IPA Font License V1.0](fonts/IPA_Font_License_Agreement_v1.0.txt) に従い、再配布という形で同梱しています

Requirements
===

* Docker version 1.13.0+
* docker-compose version 1.10.0+

Installation
===

```bash
$ git clone https://github.com/ikasam/docker-yaml_cv.git
$ cd docker-yaml_cv
$ git clone https://github.com/kaityo256/yaml_cv.git
```

Usage
===

```bash
$ docker-compose up
$ ls -l output.pdf
-rw-r--r--. 1 root root 109173 Jan 28 04:40 output.pdf
```

Change the command
===

`docker-compose.yml` の `command` を修正することで実行コマンドを変更できます。
以下は、 `your_style.txt` をスタイルとして利用する例です。

```diff
 version: '3'
 services:
   make_cv:
     build: .
-    command: ruby make_cv.rb -o /output/output.pdf
+    command: ruby make_cv.rb -s your_style.txt -o /output/output.pdf
     volumes:
       - ./:/output
       - ./yaml_cv:/usr/src/app
       - ./fonts:/usr/src/app/fonts
```

コマンドの Syntax は [kaityo256/yaml_cv](https://github.com/kaityo256/yaml_cv#%E4%BD%BF%E3%81%84%E6%96%B9) を参照してください。

License
===
* [fonts](fonts) 配下のすべてのファイル: [IPA Font License V1.0](fonts/IPA_Font_License_Agreement_v1.0.txt)
* 上記以外: [MIT License](LICENSE)
