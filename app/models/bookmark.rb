class Bookmark < ApplicationRecord
  validates :comment, presence: true
  validates :comment, length: { minimum: 6 }
  validates :list_id, uniqueness: { scope: :movie_id }
  belongs_to :movie
  belongs_to :list
  validates :movie, presence: true
  validates :list, presence: true
end
