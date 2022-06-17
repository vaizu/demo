class Therapist < ApplicationRecord
  has_rich_text :therapist_message
  has_rich_text :shop_message
  has_many_attached :therapist_images
  belongs_to :ranking, optional: true
end
