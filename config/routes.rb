Rails.application.routes.draw do
  resources :cocktails do
    resources :doses
  end
  resources(:doses, {only: [:destroy]})
end
