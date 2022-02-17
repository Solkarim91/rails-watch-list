class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  # validates [:list, :movie], uniqueness: true
  validates :comment, length: { minimum: 6 }, presence: true
  validates :movie_id, uniqueness: { scope: :list_id }
end
