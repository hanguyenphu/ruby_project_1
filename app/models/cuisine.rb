# frozen_string_literal: true

class Cuisine < ApplicationRecord
  has_many :restaurant
  validate :name, presense: true, length: { minimum: 5 }
end
