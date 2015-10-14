class DungeonHistory < ActiveRecord::Base
  validates :started_on, :dungeon_id, presence: true
  validates :remarks, length: { maximum: 100 }

  belongs_to :dungeon
end
