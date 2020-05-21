class Instrument < ApplicationRecord
  mount_uploader :image, ImageUploader
  serialize :image, JSON # if you use SQLite, add this line
  belongs_to :user, optional: true


  validate :title, :brand, :price, :model, presence: true
end
