class UsersController < ApplicationController

  def index
    @users = User.all #allは全てのデータを取得するメソッド
    p @users
  end


  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new #newは新規作成するメソッド
  end

  def create
    @user = User.new(user_params) #user_paramsは下記のprivateメソッド
    if @user.save                 #saveはデータを保存するメソッド
      redirect_to users_path      #/usersにリダイレクト
    else
      render :new                 #newのviewをレンダリング
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :ruby) #permitで送られてきたデータを選別している
    end
  

end
