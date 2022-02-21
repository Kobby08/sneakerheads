class SneakersController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :set_sneaker, except: %i[index new create]

  def index
    @sneakers = current_user.sneakers
  end

  def show; end

  def new
    @sneaker = Sneaker.new
  end

  def create
    @sneaker = Sneaker.new(sneaker_params.merge(user: current_user))
    if @sneaker.save
      flash[:notice] = 'Sneaker was created successfully!'
      redirect_to sneakers_path
    else
      flash.now[:alert] = 'Sneaker was not created!'
      render 'new'
    end
  end

  def edit; end

  def update
    if @sneaker.update(sneaker_params)
      flash[:notice] = 'Sneaker was upated successfully!'
      redirect_to sneaker_path(@sneaker)
    else
      flash.now[:alert] = 'Sneaker was not updated!'
      render 'edit'
    end
  end

  def destroy
    @sneaker.destroy
    flash[:alert] = 'Sneaker was deleted!'
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
