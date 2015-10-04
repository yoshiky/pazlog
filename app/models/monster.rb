class Monster < ActiveRecord::Base
  validates :name, :book_no, presence: true
  validates :name, length: { maximum: 50}
  validates :book_no, numericality: true
end
