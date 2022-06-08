class Ranking < ApplicationRecord
  has_many :therapists, dependent: :destroy
end
