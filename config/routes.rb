Rails.application.routes.draw do

  root to: 'pages#landing'

  get 'review/:student_id', to: 'pages#review', as: 'review'

  get 'review/:student_id/self', to: 'pages#self', as: 'review_self'

end
