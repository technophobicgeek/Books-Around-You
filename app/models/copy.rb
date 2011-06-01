# == Schema Information
# Schema version: 20110528201945
#
# Table name: copies
#
#  id          :integer         not null, primary key
#  user_id     :integer
#  book_id     :integer
#  condition   :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Copy < ActiveRecord::Base
  belongs_to :user
  belongs_to :book
end
