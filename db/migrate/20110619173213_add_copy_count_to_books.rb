class AddCopyCountToBooks < ActiveRecord::Migration
  def self.up
    add_column :books, :copies_count, :integer
  end

  def self.down
    remove_column :books, :copies_count
  end
end
