class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(user_id: user_params[:user_id]).try(:authenticate, user_params[:password])
    if user
      session[:user_id] = user.user_id
      # render plain: sprintf("welcome, %s!", session[:user_id])
      @wikis = Wiki.all
      redirect_to "/wikis"
    else
      flash.now[:login_error] = "无效的账户名或密码，请输入正确的账户名和密码！"
      render "sessions/new"
    end
  end

  def destroy
    @wikis = Wiki.all
    if session[:user_id] != nil
      session[:user_id] = nil
      redirect_to "/wikis",notice: "注销成功～"
    else
      redirect_to "/wikis",notice: "请先登录～"
    end
  end

  private
  def user_params
    params.require(:session).permit(:user_id, :password)
  end
end
