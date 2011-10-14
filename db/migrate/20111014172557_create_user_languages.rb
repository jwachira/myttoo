class CreateUserLanguages < ActiveRecord::Migration
  def self.up
    create_table :user_languages do |t|
      t.references :user
      t.references :language
      t.timestamps
    end
  end

  def self.down
    drop_table :user_languages
  end
end
