class AddTitlesToBooks < ActiveRecord::Migration
  def self.up
    add_column :books, :title, :string
    add_column :books, :subtitle, :string
    add_column :books, :year, :string
  end

  def self.down
    remove_column :books, :year
    remove_column :books, :subtitle
    remove_column :books, :title
  end
end
