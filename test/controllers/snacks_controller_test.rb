require 'test_helper'

class SnacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @snack = snacks(:one)
  end

  test "should get index" do
    get snacks_url, as: :json
    assert_response :success
  end

  test "should create snack" do
    assert_difference('Snack.count') do
      post snacks_url, params: { snack: { name: @snack.name, notes: @snack.notes } }, as: :json
    end

    assert_response 201
  end

  test "should show snack" do
    get snack_url(@snack), as: :json
    assert_response :success
  end

  test "should update snack" do
    patch snack_url(@snack), params: { snack: { name: @snack.name, notes: @snack.notes } }, as: :json
    assert_response 200
  end

  test "should destroy snack" do
    assert_difference('Snack.count', -1) do
      delete snack_url(@snack), as: :json
    end

    assert_response 204
  end
end
