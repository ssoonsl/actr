Rails.application.routes.draw do

  root to: 'pages#landing'

  get 'review/:student_id', to: 'pages#review', as: 'review'

  get 'review/:student_id/self', to: 'pages#self', as: 'review_self'
  post 'review/:student_id/self_submit', to: 'pages#self_submit', as: 'review_self_submit'

end
