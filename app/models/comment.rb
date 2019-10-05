# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :restaurant
  belongs_to :reviewer
  validates :content, length: { minimum: 5 }
end
