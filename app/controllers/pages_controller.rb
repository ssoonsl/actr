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

  def self_submit
    @student = Student.find(params[:student_id])

    self_reflection_params = params.require(:self_reflection).permit(:answer1, :answer2)
    @self_reflection = @student.self_reflections.build(self_reflection_params)
    if @self_reflection.save
      redirect_to review_path(student_id: @student)
    else
      render :self
    end
  end

  def team
    @student = Student.find(params[:student_id])
    @feedback = Feedback.new
    @teammate = Student.find(params[:id])
  end

  def team_submit
    @student = Student.find(params[:student_id])
    @teammate = Student.find(params[:id])

    feedback_params = params.require(:feedback).permit(:answer1, :answer2)
    @feedback = @student.feedback_as_reviewer.build(feedback_params)
    @feedback.reviewee = @teammate
    if @feedback.save
      redirect_to review_path(student_id: @student)
    else
      render :team
    end
  end

end
