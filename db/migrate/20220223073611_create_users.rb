class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address, unique: true
      t.string :phone
      t.string :email
      t.integer :role, default: 0
      t.string :password_digest

      t.timestamps
    end
  end
end
