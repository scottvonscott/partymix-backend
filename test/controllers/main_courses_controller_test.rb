require 'test_helper'

class MainCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @main_course = main_courses(:one)
  end

  test "should get index" do
    get main_courses_url, as: :json
    assert_response :success
  end

  test "should create main_course" do
    assert_difference('MainCourse.count') do
      post main_courses_url, params: { main_course: { name: @main_course.name, notes: @main_course.notes } }, as: :json
    end

    assert_response 201
  end

  test "should show main_course" do
    get main_course_url(@main_course), as: :json
    assert_response :success
  end

  test "should update main_course" do
    patch main_course_url(@main_course), params: { main_course: { name: @main_course.name, notes: @main_course.notes } }, as: :json
    assert_response 200
  end

  test "should destroy main_course" do
    assert_difference('MainCourse.count', -1) do
      delete main_course_url(@main_course), as: :json
    end

    assert_response 204
  end
end
