class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :user_id, nulll: false

      t.timestamps
    end
  end
end
