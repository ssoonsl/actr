class Admin::PagesController < ApplicationController

  def manage
    @students = Student.order(name: :asc)
    @feedback = Feedback.all
  end

  def export
    @students = Student.order(name: :asc)
    @feedback = Feedback.all

    respond_to do |format|
      format.xls
    end
  end

end
