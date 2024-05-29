# FlashcardApp

## セットアップ手順

### 1. 依存関係のインストール

```bash
bundle install
```

### 2. データベースのリセットとシードデータの投入

SQLiteデータベースをリセットし、シードデータを再投入します。

```bash
rails db:drop db:create db:migrate db:seed
```

### 3. サーバーの起動

```bash
rails server
```

## 画像の量産

### 画像の保存

収集した画像を`app/assets/images/flashcards`フォルダに保存します。

### シードデータの作成

```bash
`db/seeds.rb`ファイルを編集して、収集した画像を使用してフラッシュカードを量産します。
ruby:flashcard_app/db/seeds.rb
flashcards_data = [
{ content: 'りんご', image: 'flashcards/apple.jpg', category: fruits },
{ content: 'バナナ', image: 'flashcards/banana.jpg', category: fruits },
{ content: '車', image: 'flashcards/car.jpg', category: vehicles },
{ content: '自転車', image: 'flashcards/bicycle.jpg', category: vehicles }
]
flashcards_data.each do |data|
Flashcard.find_or_create_by(content: data[:content], image: data[:image], category: data[:category])
end
```



## 音声読み上げ
```bash
`SpeechSynthesis` APIを使用して、`Flashcard`テーブルの`content`カラムのデータを読み上げます。

javascript:flashcard_app/app/views/flashcards/show.html.erb
var msg = new SpeechSynthesisUtterance('<%= @flashcard.content %>');
msg.lang = 'ja-JP'; // 日本語の言語コードを設定
window.speechSynthesis.speak(msg);
```
