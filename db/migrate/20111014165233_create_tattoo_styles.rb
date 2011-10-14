class CreateTattooStyles < ActiveRecord::Migration
  def self.up
    create_table :tattoo_styles do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :tattoo_styles
  end
end
