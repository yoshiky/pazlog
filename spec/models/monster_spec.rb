require 'rails_helper'

RSpec.describe Monster, type: :model do
  describe Monster do
    it "is valid monster" do
      expect(FactoryGirl.build(:monster)).to be_valid
    end

    it "is invalid with no name" do
      expect(FactoryGirl.build(:monster,
                              name: nil)).not_to be_valid
    end

    it "is invalid with too long name" do
      expect(FactoryGirl.build(:monster,
                              name: "あ" * 51)).not_to be_valid
    end

    it "is invalid with no name" do
      expect(FactoryGirl.build(:monster,
                              name: nil)).not_to be_valid
    end

    it "is invalid with no book_no" do
      expect(FactoryGirl.build(:monster,
                              book_no: nil)).not_to be_valid
    end
  end
end
