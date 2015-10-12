FactoryGirl.define do

  factory :monster do
    name "nomal monster"
    book_no 1
    descent false

    factory :descent_monster do
      descent true
    end
  end

end
