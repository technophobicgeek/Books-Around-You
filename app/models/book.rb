class Book < ActiveRecord::Base
  has_many :copies, :dependent => :destroy
end
