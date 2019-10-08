# frozen_string_literal: true

class RestaurantsController < ApplicationController
  def index
    @pagy, @restaurants = pagy(Restaurant.all, items: 10)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @comments = Comment.where(restaurant_id: @restaurant.id)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:id, :name)
  end
end
