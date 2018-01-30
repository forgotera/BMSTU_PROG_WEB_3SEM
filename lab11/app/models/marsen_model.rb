class MarsenModel < ApplicationRecord
  validates :marsenNumb, uniqueness: true
end
