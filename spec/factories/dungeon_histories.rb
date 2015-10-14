FactoryGirl.define do
  factory :dungeon_history do
    started_on "2015-10-13"
    closed_on  "2015-10-13"
    remarks "ああああああああああ"
    association :dungeon, factory: :dungeon ,id: 1
    deleted_at "2015-10-13 02:45:11"
  end

end
