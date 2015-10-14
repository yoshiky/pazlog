class CreateDungeonHistories < ActiveRecord::Migration
  def change
    create_table :dungeon_histories do |t|
      t.date :started_on
      t.date :closed_on
      t.references :dungeon, index: true, foreign_key: true
      t.text :remarks

      t.timestamps null: false
      t.datetime :deleted_at
    end
  end
end
