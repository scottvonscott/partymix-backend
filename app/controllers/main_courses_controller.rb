class MainCoursesController < ApplicationController
  before_action :set_main_course, only: [:show, :update, :destroy]

  # GET /main_courses
  def index
    @main_courses = MainCourse.all

    render json: @main_courses
  end

  # GET /main_courses/1
  def show
    render json: @main_course
  end

  # POST /main_courses
  def create
    @main_course = MainCourse.new(main_course_params)

    if @main_course.save
      render json: @main_course, status: :created, location: @main_course
    else
      render json: @main_course.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /main_courses/1
  def update
    if @main_course.update(main_course_params)
      render json: @main_course
    else
      render json: @main_course.errors, status: :unprocessable_entity
    end
  end

  # DELETE /main_courses/1
  def destroy
    @main_course.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_course
      @main_course = MainCourse.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def main_course_params
      params.require(:main_course).permit(:name, :notes)
    end
end
