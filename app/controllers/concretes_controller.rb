class ConcretesController < ApplicationController
  def new
    @concrete = Concrete.new
  end

  def create
    render nothing: true
  end

  def edit
    @concrete = Concrete.find(params[:id])
  end

  def show
    @concrete = Concrete.find(params["id"])
  end

  def update

    @concrete = Concrete.find(params[:id])
    @concrete.update(concrete_params)

    # redirect_to "/concretes/#{@concrete.id}"
    render nothing: true
  end

  private

  def concrete_params
    params.require("concrete").permit("mix_type", "psi", "color", "cost_per_yard")
  end
end
