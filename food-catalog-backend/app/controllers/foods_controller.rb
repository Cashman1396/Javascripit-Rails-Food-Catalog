class FoodsController < ApplicationController
    def index
        foods = Food.all
        render json: FoodSerializer.new(foods)
    end

    def show
        food = Food.find_by(id: params[:id])
        render json: FoodSerializer.new(food).serializable_hash
    end
end
