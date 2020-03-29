class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name, null: false
      t.index :name, unique: true
      t.string :tel, :limit => 11, null: false
      t.date :birthday, null: false
      t.string :postcode, :limit => 8, null: false
      t.string :city, null: false
      t.string :block, null: false
      t.string :building, null: false
      t.timestamps
    end
  end
end
