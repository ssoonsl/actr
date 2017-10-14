class PagesController < ApplicationController

  def landing
    @students = Student.order(name: :asc)
  end

  def review
    @student = Student.find(params[:student_id])
    @students = Student.order(name: :asc)
  end

  def self
    @student = Student.find(params[:student_id])
    @self_reflection = SelfReflection.new
  end

  def team
    @student = Student.find(params[:student_id])
    @feedback = Feedback.new
    @teammate = Student.find(params[:id])
  end

  def team_submit
    @student = Student.find(params[:student_id])
    @teammate = Student.find(params[:id])

    @feedback = @student.feedback_as_reviewer.build(feedback_params)
    @feedback.reviewee = @teammate
    byebug
    if @feedback.save
      redirect_to review_path(student_id: @student)
    else
      render :team
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:answer1, :answer2)
  end

end
