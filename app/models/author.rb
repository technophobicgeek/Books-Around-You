# == Schema Information
# Schema version: 20110601022230
#
# Table name: authors
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  twitter    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Author < ActiveRecord::Base
end
