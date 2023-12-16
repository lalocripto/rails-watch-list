class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6, maximum: 3000 }, presence: true
  validates :movie_id, uniqueness: { scope: :list_id }
end

# class Bookmark < ApplicationRecord
#   belongs_to :movie
#   belongs_to :list
#   validates :movie, presence: true
#   validates :list, presence: true
#   validates :comment, length: { minimum: 6, maximum: 240 }, presence: true
#   validates :movie_id, uniqueness: { scope: :list_id }
# end
