class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
    @title = @user.nickname
    @books = @user.books.paginate(
                :page => params[:page],
                :order => 'updated_at DESC',
                :per_page => 16
              )
  end

end
