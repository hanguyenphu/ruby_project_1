# frozen_string_literal: true

class CuisinesController < ApplicationController
  def index
    @pagy, @cuisines = pagy(Cuisine.all, items: 10)
  end

  def show
    @cuisine = Cuisine.find(params[:id])
    @restaurants = Restaurant.where(cuisine_id: @cuisine.id)
  end

  def cuisine_params
    params.require(:cuisine).permit(:id, :name)
  end
end
