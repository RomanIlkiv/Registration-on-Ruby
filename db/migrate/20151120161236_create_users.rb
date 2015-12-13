class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.integer :age
      t.string :email
      t.string :password
      t.string :password_confirmation
      t.string :sex
      t.integer :phone
      t.string :status

      t.timestamps null: false
    end
  end
end
