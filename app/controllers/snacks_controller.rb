class SnacksController < ApplicationController
  before_action :set_snack, only: [:show, :update, :destroy]

  # GET /snacks
  def index
    @snacks = Snack.all

    render json: @snacks
  end

  # GET /snacks/1
  def show
    render json: @snack
  end

  # POST /snacks
  def create
    @snack = Snack.new(snack_params)

    if @snack.save
      render json: @snack, status: :created, location: @snack
    else
      render json: @snack.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /snacks/1
  def update
    if @snack.update(snack_params)
      render json: @snack
    else
      render json: @snack.errors, status: :unprocessable_entity
    end
  end

  # DELETE /snacks/1
  def destroy
    @snack.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snack
      @snack = Snack.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def snack_params
      params.require(:snack).permit(:name, :notes)
    end
end
