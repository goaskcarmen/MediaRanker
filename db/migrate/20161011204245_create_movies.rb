class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :ranked
      t.string :director
      t.string :description

      t.timestamps null: false
    end
  end
end
