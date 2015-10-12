class CreateDungeonKinds < ActiveRecord::Migration
  def change
    create_table :dungeon_kinds do |t|
      t.string :name

      t.timestamps null: false
      t.datetime :deleted_at
    end
  end
end
