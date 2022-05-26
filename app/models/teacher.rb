class Teacher < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :teachers_languages, dependent: :destroy
  has_many :languages, through: :teachers_languages
  has_many :appointments
  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
end
