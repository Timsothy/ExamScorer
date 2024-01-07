# アプリケーション名
ExamScorer

# アプリケーション概要
定期テストの得点を管理することができる。

# URL
https://examscorer-blao.onrender.com

# テスト用アカウント
・timothy
・0515
・test@test.com
・test1234

# 利用方法
## テスト登録
1.トップページのヘッダーからユーザー新規登録を行う
2.右下の新規テストボタンから、テストの内容(学年・テスト名・得点・平均点・合計点・順位)を入力し登録する

## テスト編集
1.トップページにある編集したいテストのテスト名から詳細表示画面に進む
2.編集ボタンからテスト内容を編集する

## テスト削除
1.トップページにある編集したいテストのテスト名から詳細表示画面に進む
2.削除ボタンでテスト内容を削除する

# アプリケーションを作成した背景
学習塾の教室長業務を担当する中で、「定期テストの得点管理が手間」という課題を抱えていた。課題を分析した結果、「得点を全員から聞き取る手間」「得点の履歴や推移を簡単に一覧できない」という問題が明らかになった。これらの課題に対処するため、定期テストの得点を効果的かつ効率的に管理できるアプリケーションの開発に着手した。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/16KGik0Q4v00mTQqaE8pwNdowvH0XwEx-xtbPpcQbBFY/edit?usp=sharing

# 実装した機能についての画像やGIFおよびその説明
## 登録機能
定期テストの得点を登録できる
[![Image from Gyazo](https://i.gyazo.com/ffb209718195dd784a68c0bb8bcc7cd1.gif)](https://gyazo.com/ffb209718195dd784a68c0bb8bcc7cd1)

## 一覧表示機能
登録した定期テストの得点一覧を表示できる
[![Image from Gyazo](https://i.gyazo.com/ee745aefc368d04e23e4e14986443c1e.png)](https://gyazo.com/ee745aefc368d04e23e4e14986443c1e)

## 詳細表示機能
登録した定期テストの全ての情報を表示できる
[![Image from Gyazo](https://i.gyazo.com/0b49d2537a9a2cb1dc2f4eaaa6c69017.png)](https://gyazo.com/0b49d2537a9a2cb1dc2f4eaaa6c69017)

# 実装予定の機能
テスト得点の推移グラフを実装予定

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/8fd0d12e7b7f5b2d2a2dbb33cb029bf3.png)](https://gyazo.com/8fd0d12e7b7f5b2d2a2dbb33cb029bf3)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/ff13311bfc9063514be2a35ad698e4f5.png)](https://gyazo.com/ff13311bfc9063514be2a35ad698e4f5)

# 開発環境
・フロントエンド
・バックエンド
・インフラ
・テスト
・テキストエディタ
・タスク管理

# ローカルでの動作方法
以下のコマンドを順に実行
% git clone https://github.com/Timsothy/ExamScorer.git
% cd ExamScorer
% bundle install
% yarn install
