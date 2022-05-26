class Language < ApplicationRecord
  has_many :teachers, through: :teachers_languages
  validates :name, presence: true
  validates :name, uniqueness: true
end
