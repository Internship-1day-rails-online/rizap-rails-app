class UsersController < ApplicationController
    def index
        @users = User.all #allはすべてのデータを取得するメソッド
    end

end
