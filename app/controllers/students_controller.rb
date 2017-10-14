class StudentsController < ApplicationController

  def passcode
    @student = Student.find(params[:student_id])
  end

  def passcode_submit
    @student = Student.find(params[:student_id])
    received_passcode = params[:passcode]
    authentication = AuthenticationService.new(@student, received_passcode)
    if authentication.passcode_verify
      authentication.record(session)
      redirect_to review_path(student_id: @student)
    else
      flash[:alert] = 'Authentication failed! Check that you have entered the right passcode (given to you on Slack by Sarine)'
      render :passcode
    end
  end

end
