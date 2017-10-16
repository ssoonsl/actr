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

  def after_sign_in_path_for(resource)
    if resource.class.name == 'Admin'
      admin_manage_path
    else
      request.env['omniauth.origin'] || stored_location_for(resource) || root_path
    end
  end

end
