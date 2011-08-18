class CreateArtistServices < ActiveRecord::Migration
  def self.up
    create_table :artist_services do |t|
      t.references :user
      t.references :service
      t.timestamps
    end
  end

  def self.down
    drop_table :artist_services
  end
end
