Rails.application.routes.draw do

  # get 'cocktails/create'

  # get 'cocktails/index'

  # get 'cocktails/show'

  # get 'cocktails/new'

  resources :cocktails do
    resources :doses,except: [:destroy]
  end

  delete 'doses/:id', to: 'doses#destroy'
end
