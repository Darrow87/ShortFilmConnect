class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :bio
      t.string :role
      t.string :equipment
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
