Rails.application.routes.draw do
  resources :playbooks, shallow: true do
    resources :formations do
      resources :plays
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
