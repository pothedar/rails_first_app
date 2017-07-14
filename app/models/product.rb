class Product < ApplicationRecord
  mount_uploader :image_url, ImageUploader
  validates_processing_of :image_url
  validate :image_size_validation
  validates :name, :description, :colour, :price, :presence => true
  private
    def image_size_validation
      errors[:image_url] << "should be larger than 50KB" if image_url.size < 0.05.megabytes
    end
end