module ApplicationHelper

  def welcome_message
    @student ? "Welcome, #{@student.name}!" : 'Welcome!'
  end

end
