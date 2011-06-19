# == Schema Information
# Schema version: 20110619175722
#
# Table name: books
#
#  id           :integer         not null, primary key
#  isbn10       :string(255)
#  isbn13       :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  title        :string(255)
#  subtitle     :string(255)
#  year         :string(255)
#  copies_count :integer
#  image_url    :string(255)
#

class Book < ActiveRecord::Base
  has_many :copies, :dependent => :destroy
  has_many :users,  :through => :copies
  has_many :authors,  :through => :authorships
  

  # Scopes on books
  
  # Find all books with at least one listed copy
  scope :listed, where(" copies_count > '0' ")
  
  # Find all books with at least one available copy
  
  # callbacks
end
