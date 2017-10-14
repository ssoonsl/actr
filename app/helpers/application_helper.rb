module ApplicationHelper

  def welcome_message
    @student ? "Welcome, #{@student.name}!" : 'Welcome!'
  end

  def pending_teammate_feedback?(student)
    student.teammates.count > student.feedback_as_reviewer.where(reviewee: student.teammates).count
  end

end
