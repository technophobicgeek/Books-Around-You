# Create some users

@users =
  (0..4).map do |i|
    User.create!(
      :name => "User #{i}",
      :nickname => "user#{i}",
      :email => "user#{i}@example.com",
      :password => "sekret#{i}",
      :password_confirmation => "sekret#{i}"
    )
  end

# Create some books

@books = 
  (0..49).map do |i|
    Book.create!(
      :isbn10 => "ISBN 10 #{i}",
      :isbn13 => "ISBN 13 #{i}",
      :title => "Book #{i}"
    )
  end


# Create some copies

@copies =
  (0..99).map do |i|
    u_num = rand(4)
    b_num = rand(50)
    Copy.create!(
      :user => @users[u_num],
      :book => @books[b_num],
      :condition => "Good",
      :description => "Copy #{i} of book #{b_num} belonging to user #{u_num}"
    )     
  end

# Create some authors
