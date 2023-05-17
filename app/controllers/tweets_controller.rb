class TweetsController < ApplicationController

  before_action :authenticate_user!, except: [:index]
  #deviceのメソッドで「ログインしていないユーザーをログイン画面に送る」メソッド
  #deviceヘルパーメソッド「authenticate_user!」は３ある後ほど検索

  def index
    @tweets = Tweet.all
    #TweetsControllerのindexアクションで全てのツイートを取得し、
    #@tweets変数に代入される。その後このデータをVIEWファイルで利用
    #ツイート一覧を表示することができる。
  end

  def new
    @tweet = Tweet.new
    #Tweet.new は、新しいTweetオブジェクトを作成するためのコードです。
    #このオブジェクトは、データベースに保存される前の状態であり、
    #属性や関連付けなどの情報を持っている。
  end

  def show
    @tweet = Tweet.find(params[:id])
    #findとは、モデルの検索機能を持つメソッドです。
    #モデルと紐づいているデータベースのテーブルから、
    #レコードを1つ取り出す場合に、findメソッドが使用される。
    
    #paramsとは、Railsで送られてきた値を受け取るためのメソッド。
  end

  def create
    #のち程追加する
  end

end