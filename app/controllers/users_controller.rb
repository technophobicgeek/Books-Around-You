class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
    @title = @user.name
    @books = @user.books
  end

end
