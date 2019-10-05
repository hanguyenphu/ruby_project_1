# frozen_string_literal: true

class Restaurant < ApplicationRecord
  belongs_to :cuisine
  has_many :comment
end
