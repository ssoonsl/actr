class AuthenticationService

  def initialize(student, passcode={})
    @student = student
    @passcode = passcode
  end

  def passcode_verify
    @passcode == @student.passcode
  end

  def record(session)
    session[:passcode] = @student.passcode.reverse
  end

  def session_verify(session)
    session[:passcode] == @student.passcode.reverse
  end

end
