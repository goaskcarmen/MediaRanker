class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.integer :ranked
      t.string :author
      t.string :description

      t.timestamps null: false
    end
  end
end
