require 'test_helper'

class PartyPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @party_plan = party_plans(:one)
  end

  test "should get index" do
    get party_plans_url, as: :json
    assert_response :success
  end

  test "should create party_plan" do
    assert_difference('PartyPlan.count') do
      post party_plans_url, params: { party_plan: { Item: @party_plan.Item, Party: @party_plan.Party } }, as: :json
    end

    assert_response 201
  end

  test "should show party_plan" do
    get party_plan_url(@party_plan), as: :json
    assert_response :success
  end

  test "should update party_plan" do
    patch party_plan_url(@party_plan), params: { party_plan: { Item: @party_plan.Item, Party: @party_plan.Party } }, as: :json
    assert_response 200
  end

  test "should destroy party_plan" do
    assert_difference('PartyPlan.count', -1) do
      delete party_plan_url(@party_plan), as: :json
    end

    assert_response 204
  end
end
