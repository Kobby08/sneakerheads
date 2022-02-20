class SneakersController < ApplicationController
  before_action :set_sneaker, except: %i[index new create]

  def index
    @sneakers = Sneaker.all
  end

  def show; end

  def new
    @sneaker = Sneaker.new
  end

  def create
    @sneaker = Sneaker.new(sneaker_params)
    if @sneaker.save
      redirect_to sneakers_path, notice: 'Sneaker created!'
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @sneaker.update(sneaker_params)
      redirect_to sneaker_path(@sneaker), notice: 'Sneaker updated!'
    else
      render 'edit'
    end
  end

  def destroy
    @sneaker.destroy
    redirect_to sneakers_path
  end

  private

  def set_sneaker
    @sneaker = Sneaker.friendly.find(params[:id])
  end

  def sneaker_params
    params.required(:sneaker).permit(:name, :model, :description, :price)
  end
end
