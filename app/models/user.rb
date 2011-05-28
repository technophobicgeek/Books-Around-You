class User < ActiveRecord::Base
  has_many :copies, :dependent => :destroy
end
