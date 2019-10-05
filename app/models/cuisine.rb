# frozen_string_literal: true

class Cuisine < ApplicationRecord
  has_many :restaurant
  validates :name, presence: true, length: { minimum: 1 }
end
