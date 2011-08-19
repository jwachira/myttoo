class AddColumnsToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :studio, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :postal_code, :string
    add_column :users, :website, :string
    add_column :users, :facebook_page, :string
    add_column :users, :twitter_page, :string
    add_column :users, :phone_number, :string
    add_column :users, :ownership, :boolean
    add_column :users, :number_of_employees, :integer
    add_column :users, :any_awards, :boolean
    add_column :users, :total_awards, :integer
    add_column :users, :tattoo_style, :string
    add_column :users, :feedback, :text
  end

  def self.down
    remove_column :users, :feedback
    remove_column :users, :tattoo_style
    remove_column :users, :total_awards
    remove_column :users, :any_awards
    remove_column :users, :number_of_employees
    remove_column :users, :ownership
    remove_column :users, :phone_number
    remove_column :users, :twitter_page
    remove_column :users, :facebook_page
    remove_column :users, :website
    remove_column :users, :postal_code
    remove_column :users, :city
    remove_column :users, :address
    remove_column :users, :studio
  end
end