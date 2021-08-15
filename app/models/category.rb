class Category < ApplicationRecord

  validates :name, presence: true, length: {minimum: 3, maximum: 25}
  validates_uniqueness_of :name
  has_many :report_categories
  has_many :reports, through: :report_categories

end
