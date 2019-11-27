class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true
  category_array = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates :category, inclusion: { in: category_array }
end
