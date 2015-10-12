class Dungeon < ActiveRecord::Base
  belongs_to :boss_monster_1, class_name: 'Monster', foreign_key: :boss_monster_1_id
  belongs_to :boss_monster_2, class_name: 'Monster', foreign_key: :boss_monster_2_id

  has_many :dungeon_kinds

  validates :name, :boss_monster_1_id, :dungeon_kind_id, presence: true
  validates :name, length: { maximum: 50}

end
