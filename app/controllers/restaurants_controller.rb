# frozen_string_literal: true

class RestaurantsController < ApplicationController
  def index
    @pagy, @restaurants = if params[:name]
                            pagy(Restaurant.where('name LIKE ?', "%#{params[:name]}%"), items: 10)
                          else
                            pagy(Restaurant.all, items: 10)
    end
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
