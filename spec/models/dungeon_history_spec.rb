require 'rails_helper'

RSpec.describe DungeonHistory, type: :model do
  it "is valid dungeon_history" do
    expect(build(:dungeon_history)).to be_valid
  end

  it "is invalid with no started_on" do
    expect(build(:dungeon_history, started_on: nil)).not_to be_valid
  end

  it "is valid with no closed_on" do
    expect(build(:dungeon_history, closed_on: nil)).to be_valid
  end

  it "is invalid with no dungeon" do
    expect(build(:dungeon_history, dungeon: nil)).not_to be_valid
  end

  it "is invalid with too long length of remarks" do
    expect(build(:dungeon_history, remarks: 'あ' * 101)).not_to be_valid
  end
end
