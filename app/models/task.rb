class Task < ApplicationRecord

  mount_uploader :photo, PhotoUploader

  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 2}
  validates :assign_to, presence: true

end
