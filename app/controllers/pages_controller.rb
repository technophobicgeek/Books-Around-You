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
    @books = available_books
  end

  private
    
    # Right now, just display a list of available books, maybe in reverse
    # order of creation. Later, we'll get more sophisticated about this.
    def available_books
    end
end
