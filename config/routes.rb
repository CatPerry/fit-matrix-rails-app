Rails.application.routes.draw do
  get 'matrix/main'
  get 'matrix/results'
  resources :exercises
  resources :workout_routines
  get 'exercises/index'
  get 'exercises/search'
  get 'exercises/:id/edit(.:format)', to: 'exercises#edit', as: 'edit_exercise_path'
  get 'exercises/show'
  get 'exercises/new'
  get 'exercises/experimental'
  
  get 'exercises/vidappend'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'matrix#main'
end
