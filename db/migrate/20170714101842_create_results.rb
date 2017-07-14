class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :material_id, null: false
      t.integer :queries_id, null: false
      t.integer :transaction_id

      t.timestamps
    end
  end
end
