class Api::MenusController < ApplicationController
  before_action :set_menu, only: [:show, :update, :destroy]

  def index
    render json: Menu.all
  end

  def show
    render json:@menu
  end

  def create
    menu = Menu.new(menu_params)
    if produc.save
      render json: menu.errors, status: 422
    end
  end

  def update
    if @menu.update(menu_params)
      render json: @menu
    else
      render json: @menu.errors, status: 422
    end
  end

  def destroy
    @menu.destroy
  end

  private
  def set_menu
    @menu = Menu.find(params[:id])
  end

  def menu_params
    params.require(:menu).permit(:item, :description, :price, :dinner)
  end
end
