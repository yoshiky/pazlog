class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :book_no
      t.boolean :descent

      t.timestamps null: false
      t.datetime :deleted_at
    end
  end
end
