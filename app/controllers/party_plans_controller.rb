class PartyPlansController < ApplicationController
  before_action :set_party_plan, only: [:show, :update, :destroy]

  # GET /party_plans
  def index
    party_plans = PartyPlan.all

    render json: party_plans
  end

  # GET /party_plans/1
  def show
    render json: party_plan
  end

  # POST /party_plans
  def create
    
  end

  # PATCH/PUT /party_plans/1
  def update
    if party_plan.update(party_plan_params)
      render json: party_plan
    else
      render json: party_plan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /party_plans/1
  def destroy
    party_plan.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_party_plan
      party_plan = PartyPlan.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.

    def party_params
      params.permit(:title)
    end

    def party_plan_params
      params.require(:party_plan).permit(:party_id, :category_id)
    end
end
