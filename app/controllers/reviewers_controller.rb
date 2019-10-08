# frozen_string_literal: true

class ReviewersController < ApplicationController
  def index
    @pagy, @reviewers = if params[:name]
      pagy(Reviewer.where('name LIKE ?', "%#{params[:name]}%"), items: 10)
    else
      pagy(Reviewer.all, items: 10)
    end
    # @pagy, @reviewers = pagy(Reviewer.all, items: 10)
  end

  def show
    @reviewer = Reviewer.find(params[:id])
    @comments = Comment.where(reviewer_id: @reviewer.id)
  end

  private

  def reviewer_params
    params.require(:reviewer).permit(:id, :name)
  end
end
