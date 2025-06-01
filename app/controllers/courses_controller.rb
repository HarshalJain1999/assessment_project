class CoursesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_course, only: %i[show edit update destroy]

  def index
    @courses = Course.all
  end

  def show
    @assignments = @course.assignments.order(id: :desc)
  end

  def new
    @course = Course.new
    @terms = Term.all.pluck(:name, :id)
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to @course, notice: 'Course created successfully.'
    else
      render :new
    end
  end

  def edit
    @terms = Term.all.pluck(:name, :id)
  end

  def update
    if @course.update(course_params)
      redirect_to @course, notice: 'Course updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
    redirect_to courses_path, notice: 'Course deleted successfully.'
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:title, :term_id, :status, :image)
  end
end
