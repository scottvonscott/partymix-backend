class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :update, :destroy]

  # GET /items
  def index
    items = Item.all

    # render json: items
    render json: ItemSerializer.new(items)
  end

  # GET /items/1
  def show
    render json: ItemSerializer.new(@item)
  end

  # POST /items
  def create
    item = Item.new(item_params)

    if item.save
      render json: ItemSerializer.new(item), status: :created, location: item
    else
      render json: item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  def update
    if item.update(item_params)
      render json: ItemSerializer.new(@item)
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit(:name, :Category)
    end
end
