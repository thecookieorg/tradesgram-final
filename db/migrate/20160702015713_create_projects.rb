class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :city
      t.datetime :deadline
      t.boolean :active, default: false

      t.timestamps null: false
    end
  end
end
