# == Schema Information
# Schema version: 20110605142720
#
# Table name: authorships
#
#  id         :integer         not null, primary key
#  author_id  :integer
#  book_id    :integer
#  position   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Authorship < ActiveRecord::Base
  belongs_to  :author
  belongs_to  :book
end
