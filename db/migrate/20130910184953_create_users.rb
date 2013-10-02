class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.date :birthday
      t.string :profile
      t.boolean :active

      t.timestamps
    end
  end
end
