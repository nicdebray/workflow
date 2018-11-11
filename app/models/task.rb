class Task < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 2}
  validates :assign_to, presence: true
end
