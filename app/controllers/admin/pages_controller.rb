class Admin::PagesController < ApplicationController

  before_action :authenticate_admin!

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
