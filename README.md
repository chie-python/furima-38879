# アプリケーション名
かんたんフリマアプリ

<br>

# アプリケーション概要
フリーマーケットのアプリケーションを作成しました。ユーザーを登録すると商品を出品できるようになります。自身が出品した商品は、編集と削除をすることができます。他のユーザーが出品した商品は、クレジットカードを用いて購入することができます。  

<br>

# URL
http://43.206.202.36/

<br>

# テスト用アカウント等
* Basic認証ID: admin
* Basic認証パスワード: 2222
* 購入者用メールアドレス: taro@test.com
* 購入者用パスワード: aaa111
* 購入用カード番号：4242424242424242
* 購入用カード期限：1223
* 購入用カードセキュリティコード：123
* 出品者用メールアドレス名: hanako@test.com
* 出品者用パスワード: aaa111

<br>

# 利用方法
* WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。
* ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。
* 接続先およびログイン情報については、上記の通りです。
同時に複数の方がログインしている場合に、ログインできない可能性があります。
* 確認後、ログアウト処理をお願いします。


### < 出品方法 >
テストアカウントでログイン→トップページから出品ボタン押下→商品情報入力→商品出品

<br>

### < 購入方法 >
テストアカウントでログイン→トップページから商品検索→商品選択→商品購入

<br>

# アプリケーションを作成した背景
フリーマーケットのように気軽に投稿できるアプリケーションが見つからないという知り合いの話に、簡単に出品・購入ができないという課題を抱えていることが判明した。

課題を分析した結果、入力画面が多いということが真因であると仮説を立てた。同様の問題を抱えている方も多いと推測し、真因を解決するために、誰でも簡単に出品・購入ができるシンプルなアプリケーションを開発することにした。

<br>

# 洗い出した要件
〜要件定義シート〜

<br>

# 実装した機能についての画像やGIFおよびその説明

* トップ画面 
[![Image from Gyazo](https://i.gyazo.com/e8ec16d2bdfd56297da0b0e4a29af273.gif)](https://gyazo.com/e8ec16d2bdfd56297da0b0e4a29af273)


* 新規登録画面
[![Image from Gyazo](https://i.gyazo.com/709a79e8d6d18437b7c728c39228b824.gif)](https://gyazo.com/709a79e8d6d18437b7c728c39228b824)

* ログイン画面
[![Image from Gyazo](https://i.gyazo.com/1e65f826a5e6ef33c26bd9298e9ff7ed.png)](https://gyazo.com/1e65f826a5e6ef33c26bd9298e9ff7ed)

* 出品画面
[![Image from Gyazo](https://i.gyazo.com/bf83a46c116ccf98e9e6282b23661e1d.gif)](https://gyazo.com/bf83a46c116ccf98e9e6282b23661e1d)

* 詳細表示画面
[![Image from Gyazo](https://i.gyazo.com/258c6264064d03fc4a19a7235794d35c.gif)](https://gyazo.com/258c6264064d03fc4a19a7235794d35c)

* 購入画面
[![Image from Gyazo](https://i.gyazo.com/3a67f2680773c29bbfd82ed62f7b87fc.gif)](https://gyazo.com/3a67f2680773c29bbfd82ed62f7b87fc)

* 編集画面
[![Image from Gyazo](https://i.gyazo.com/bee4c064d930bf1dea9308fdd7fc79ae.gif)](https://gyazo.com/bee4c064d930bf1dea9308fdd7fc79ae)

* 削除前画面
[![Image from Gyazo](https://i.gyazo.com/144b830a0dd6cddb63001a2c2c4a45f8.gif)](https://gyazo.com/144b830a0dd6cddb63001a2c2c4a45f8)


# 実装予定の機能
ユーザーのコミュニケーションを活性化することを目的に、コメント機能・いいね機能・ユーザー管理画面を実装予定。

<br>

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/5e6afb6bf31c584e80d2a92fab7f1ef0.png)](https://gyazo.com/5e6afb6bf31c584e80d2a92fab7f1ef0)

<br>

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/8ec27227ae2eeb7c615d4795b894f363.png)](https://gyazo.com/8ec27227ae2eeb7c615d4795b894f363)

<br>

# 開発環境
* Ruby
* Ruby on Rails
* MySQL
* Github
* AWS
* Visual Studio Code

<br>

# ローカルでの動作方法
以下のコマンドを順に実行

% git clone https://github.com/chie-python/furima-38879

% cd XXXXXX

% bundle install

% yarn install

<br>

# 工夫したポイント
スペルミスによるエラーが頻発するのを回避するために、慎重にコーディングしてエディタのヒントを見ながら作業を進めた。

また、作業工程を分割して細かくリリースすることで、工数が見積りやすくなり、やり直しにも容易に対応できるように少しずつデプロイした。

画像を投稿する際にどの画像を選択したかが事前にわからないと、公開時に想定と異なる画像をアップロードしてしまう点が課題であると考え、新規投稿・編集画面において画像を選択後、プレビューされるよう追加実装した。

<br>