Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'user/new_html', to: 'user#new_html', as: 'new_html'
  post 'user/new_html', to: 'user#create_html', as: 'create_html'

  get 'user/new_form_tag',  to: 'user#new_form_tag', as:'new_form_tag'
  post 'user/new_form_tag',  to: 'user#create_form_tag', as:'create_tag'
  get 'user/new_form_for',  to: 'user#new_form_for', as:'new_form_for'
  post 'user/new_form_for',  to: 'user#create_form_for', as:'create_form_for'
  get 'user/error', to: 'user#error', as:'error'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
