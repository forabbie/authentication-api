Rails.application.routes.draw do
  # devise_for :users
  # devise_scope :user do
  #   post '/users/sign_up', to: 'devise/registrations#create'
  # end
  devise_for :users, path: '', path_names: {
    sign_in: '/auth/login',
    sign_out: '/auth/logout',
    registration: '/auth/signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
end
