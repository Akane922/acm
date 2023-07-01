## 動作確人

<!-- PCで動かした場合の動作確人を動画で貼る or 見た目のみの作成で機能が必要ない場合は画像でOK -->
**PCの動作確認動画**
一旦保存だけのためにpushします。動画は改めてお送り致します。
## やったこと
<!-- 実装した内容を書く-->
不要な部分の削除とインデントを揃えること
post.rb作成
post_controller.rbにparams追加
reate    db/migrate/20230629092249_create_posts.rb
_post・html.erb追記 １０行目href="#"の書き換えが必要
edit.html.erbにresume, lisence, availabledates 追加
application controller に以下追加
  def logged_in?
    veterinarian_signed_in?
  end

## 実装のリンク
<!-- ガントチャートのタスク対象のセルのリンクを貼る -->
https://docs.google.com/spreadsheets/d/16aO-isogj_03ykaSCOI7fjpI2dMjqEZedh8kVr040Uc/edit#gid=1897158943&range=B33
## 備考

<!-- なければ、書かなくても良い。相談事項があれば、ここに書く。-->
In app/views/layouts/_footer.html.erb:
<div class="col"></div> の繰り返しは、フッターの中央にスペースを入れるために入れました。
htmlでできなかったので、このようにしています。

