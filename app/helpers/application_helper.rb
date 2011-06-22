module ApplicationHelper
  def logo
    image_tag("lovebzz.png", :alt => "Books Around You", :class => "round")
  end
  
  def title
    base_title = "Books Around You"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end 
  end
  
  def default_image_url
    "/images/owl_book.jpg"
  end
  
end
