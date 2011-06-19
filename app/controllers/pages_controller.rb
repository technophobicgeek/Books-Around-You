class PagesController < ApplicationController
  
  def about
    @title = "About"
  end

  def contact
    @title = "Contact"
  end

  def help
    @title = "Help"
  end

  def home
    @title = "Home"

    @books = Book.listed.paginate(
        :page => params[:page],
        :order => 'created_at DESC',
        :per_page => 16
      )
  
  end

end
