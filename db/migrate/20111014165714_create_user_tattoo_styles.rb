class CreateUserTattooStyles < ActiveRecord::Migration
  def self.up
    create_table :user_tattoo_styles do |t|
      t.references :user
      t.references :tattoo_style
      t.timestamps
    end
  end

  def self.down
    drop_table :user_tattoo_styles
  end
end
