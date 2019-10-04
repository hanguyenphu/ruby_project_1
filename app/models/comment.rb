class Comment < ApplicationRecord
  belongs_to :restaurant
  belongs_to :reviewer
end
