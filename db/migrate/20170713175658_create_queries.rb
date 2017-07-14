class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.string :barcode, null: false
      t.integer :user_id

      t.timestamps
    end
  end
end
