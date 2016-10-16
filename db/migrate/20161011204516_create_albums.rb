class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :ranked
      t.string :artist
      t.string :description

      t.timestamps null: false
    end
  end
end
