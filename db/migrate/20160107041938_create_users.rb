class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email
      t.string :location
      t.string :school
      t.integer :generation
      t.timestamps null: false
    end
  end
end
