# frozen_string_literal: true

class Reviewer < ApplicationRecord
  has_many :comment
  validate :name, presense: true
  validate :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
