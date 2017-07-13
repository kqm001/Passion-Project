class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.string :upc, null: false

      t.timestamps
    end
  end
end
