class AddColumnsToForm < ActiveRecord::Migration
  def self.up
    add_column :users, :name_on_certificate, :string
    add_column :users, :nick_name, :string
    add_column :users, :opening_times, :string    
    add_column :users, :minimum_spend, :string
    add_column :users, :hourly_rate, :string
    add_column :users, :attend_conventions, :string
    add_column :users, :guest_spots, :boolean
  end

  def self.down
    remove_column :users, :guest_spots
    remove_column :users, :attend_conventions
    remove_column :users, :hourly_rate
    remove_column :users, :minimum_spend
    remove_column :users, :opening_times
    remove_column :users, :nick_name
    remove_column :users, :name_on_certificate
  end
end