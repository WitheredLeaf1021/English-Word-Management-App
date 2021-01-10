Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :words do
    resources :englishes
  end

  root 'welcome#index'
end
