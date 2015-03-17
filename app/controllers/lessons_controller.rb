class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      flash[:notice] = "Lesson successfully added!"
      redirect_to lessons_path
    else
      render :new
    end
  end

private

  def lesson_params
    params.require(:lesson).permit(:title, :body)
  end
end
