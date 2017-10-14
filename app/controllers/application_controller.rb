class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def verify_passcode
    @student = Student.find(params[:student_id])
    authentication = AuthenticationService.new(@student)
    unless authentication.session_verify(session)
      redirect_to passcode_path(student_id: @student)
    end
  end
end
