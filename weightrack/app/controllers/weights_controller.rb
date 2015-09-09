class WeightsController < ApplicationController
  def create
    @weight = current_user.weights.build(workout_params)
    if @weight.save
      redirect_to @weight, notice: "Successfully created new workout"
    else
      render 'new'
    end
  end
end
