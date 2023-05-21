class UsersController < ApplicationController
  def index
    @users = User.all
    #UsersControllerのindex アクションで全てのユーザーを取得し、
    #@users 変数に代入される。その後データをVIEWファイルで利用し
    #ユーザー一覧を表示することができる。
  end

  def show
    @user = User.find(params[:id])
    #findとは
    #モデルの検索機能を持つメソッド。
    #モデルと紐づいているデータベースのテーブルから、
    #レコードを一つ取り出す場合に、findメソッドが使用される。

    #paramsとは
    #Viewから送られてきた値を受け取るためのメソッド。
  end
end