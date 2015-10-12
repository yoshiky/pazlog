class CreateDungeons < ActiveRecord::Migration
  def change
    create_table :dungeons do |t|
      t.string  :name, null: false
      t.integer :dungeon_kind_id, null: false
      t.integer :boss_monster_1_id
      t.integer :boss_monster_2_id

      t.timestamps null: false
      t.datetime :deleted_at
    end
  end
end
