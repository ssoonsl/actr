class PagesController < ApplicationController

  def landing
    @students = Student.all
  end

  def review
    @student = Student.find(params[:student_id])
    @students = Student.all
  end

  def self
    @student = Student.find(params[:student_id])
    @self_reflection = SelfReflection.new
  end

  def team
    @student = Student.find(params[:student_id])
    @teammate_feedback = TeammateFeedback.new
    @teammate = Student.find(params[:id])
  end

end
