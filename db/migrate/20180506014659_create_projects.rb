class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :description
      t.string :city
      t.string :state
      t.string :genre
      t.string :equipment
      t.string :needed_equipment

      t.timestamps null: false
    end
  end
end
