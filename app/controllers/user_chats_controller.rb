class UserChatsController < ApplicationController
  def show
    @user = User.find(params[:user_id])
    @chat = UserChat.new
  end
end
