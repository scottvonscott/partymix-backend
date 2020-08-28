class PartiesController < ApplicationController
  before_action :set_party, only: [:show, :update, :destroy]

  # GET /parties
  def index
    parties = Party.all
    render json: PartySerializer.new(parties)
  end

  # GET /parties/1
  def show
    
    render json: @party
  end

  # POST /parties
  def create
    party = Party.new(party_params)
    if party.save
    params[:items].each do |i|
      item = Item.new(name: i[:name], category_id: i[:category_id])
      item.save
      party_plan = PartyPlan.new(party: party, item: item)
      party_plan.save
    end
  end
    if party.save
      render json: PartySerializer.new(party)
    else
      render json: party_plan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parties/1
  def update
    if @party.update(party_params)
      render json: @party
    else
      render json: @party.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parties/1
  def destroy
    @party.destroy
    render json: {message: "#{@party.title} has been delete!"}

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_party
      @party = Party.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def party_params
      params.permit(:title)
    end
end
