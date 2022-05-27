class Teacher < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :global_search,
                  against: %i[name location],
                  associated_against: {
                    languages: [:name]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
  belongs_to :user

  has_one_attached :photo

  has_many :teachers_languages, dependent: :destroy
  has_many :languages, through: :teachers_languages
  has_many :appointments

  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
