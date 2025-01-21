class UsersController < ApplicationController

  def index
    @users = User.all #allは全てのデータを取得するメソッド
  end


  def new
    @user = User.new #newは新規作成するメソッド
  end

  def create
    @user = User.new() #user_paramsは下記で定義しているメソッド
    
    if @user.save                 #saveはデータを保存するメソッド
      redirect_to action: :index  #indexアクションにリダイレクト
    else
      render :new, status: :unprocessable_entity #newアクションを再度表示
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :ruby) #permitで送られてきたデータを選別している
    end
  

end
