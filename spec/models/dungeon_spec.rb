require 'rails_helper'

RSpec.describe Dungeon, type: :model do
  it "is valid dungeon" do
    expect(build(:dungeon)).to be_valid
  end

  it "is invalid with no name" do
    expect(build(:dungeon,
                 name: nil)).not_to be_valid
  end

  it "is invalid with no boss_monster_1" do
    expect(build(:dungeon,
                 boss_monster_1: nil)).not_to be_valid
  end

  it "is valid with no boss_monster_2" do
    expect(build(:dungeon, 
                 boss_monster_2: nil)).to be_valid
  end

end
