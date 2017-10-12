Rails.application.routes.draw do

  root to: 'pages#landing'

  get 'review/:student_id', to: 'pages#review', as: 'review'

end
