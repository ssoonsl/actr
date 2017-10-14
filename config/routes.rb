Rails.application.routes.draw do

  devise_for :admins

  root to: 'pages#landing'

  get 'review/:student_id', to: 'pages#review', as: 'review'

  get 'review/:student_id/self', to: 'pages#self', as: 'review_self'
  post 'review/:student_id/self_submit', to: 'pages#self_submit', as: 'review_self_submit'

  get 'review/:student_id/team', to: 'pages#team', as: 'review_team'
  post 'review/:student_id/team_submit/:id', to: 'pages#team_submit', as: 'review_team_submit'

  get 'passcode/:student_id', to: 'students#passcode', as: 'passcode'
  post 'passcode/:student_id/submit', to: 'students#passcode_submit', as: 'passcode_submit'

end
