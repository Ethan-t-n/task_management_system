Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks do 
    collection do 
      delete 'clear_all', action: 'clear_all'
    end
  end
  root 'tasks#index'
end
