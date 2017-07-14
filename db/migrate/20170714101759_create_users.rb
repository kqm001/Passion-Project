class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name
      t.email :email, null: false
      t.password :password_digest, null: false

      t.timestamps
    end
  end
end
