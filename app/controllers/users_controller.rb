class UsersController < ApplicationController
    def index
        @users = User.all #allはすべてのデータを取得するメソッド
    end

    def show
        @user = User.find(params[:id]) #findは指定したidのデータを取得するメソッド
    end
    
end
