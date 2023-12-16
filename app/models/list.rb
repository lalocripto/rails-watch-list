class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end

# class List < ApplicationRecord
#   has_many :movie, dependent: :destroy
#   has_many :bookmarks, dependent: :destroy
#   has_many :movies, through: :bookmarks
#   validates :name, presence: true, uniqueness: true
# end
