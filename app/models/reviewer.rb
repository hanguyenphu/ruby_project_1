# frozen_string_literal: true

class Reviewer < ApplicationRecord
  has_many :comment
  validates :name,  presence: true, length: { minimum: 1 }
  validates :email, presence: true
end
