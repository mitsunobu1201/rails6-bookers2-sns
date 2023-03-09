class SearchesController < ApplicationController
  
  #各アクションが動く前にログインしているかしていないかを判断
  before_action :authenticate_user!

  def search
    #formから受け取る(search = 完全一致、前方一致・・・、word = 検索内容)
    @range = params[:range]
    
    #rangeがUserならUserモデルへ
    if @range == "User" 
      @users = User.looks(params[:search], params[:word])
      
    #rangeがBookならBookモデルへ
    else  
      @books = Book.looks(params[:search], params[:word])
    end
  end
end
