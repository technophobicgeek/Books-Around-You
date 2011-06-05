# == Schema Information
# Schema version: 20110601021929
#
# Table name: books
#
#  id         :integer         not null, primary key
#  isbn10     :string(255)
#  isbn13     :string(255)
#  created_at :datetime
#  updated_at :datetime
#  title      :string(255)
#  subtitle   :string(255)
#  year       :string(255)
#

class Book < ActiveRecord::Base
  has_many :copies, :dependent => :destroy
  has_many :users,  :through => :copies
  has_many :authors,  :through => :authorships
  
  # Pagination
  
end
