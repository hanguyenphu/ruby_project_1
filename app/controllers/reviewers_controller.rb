# frozen_string_literal: true

class ReviewersController < ApplicationController
  def index
    @reviewers = Reviewer.all
  end

  private

  def reviewer_params
    params.require(:reviewer).permit(:id, :name)
  end
end
