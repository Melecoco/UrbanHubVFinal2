Rails.application.routes.draw do

  resources :charges
  
  get 'eles/index'
  get 'eles/show'
  devise_for :pro, :controllers => { registrations: 'registrations_pro' }
  devise_for :ele, :controllers => { registrations: 'registrations_ele' }
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'events#index'

  get "events/subscribe/:id", to: "events#subscribe"
  get "events/closingevent/:id", to: "events#closingevent"
  post "events/pay/:id", to: "events#pay", as: 'pay'
  get "events/subscribeandpay/:id", to: "events#subscribeandpay"
  get "events/after_pay/:id", to: "events#after_pay", as: 'after_pay'

  get "events/ele/:ele_id/:id", to: "events#addeletoinvitation"
  get "events/pro/:pro_id/:id", to: "events#addprotoinvitation"
  

  get "eles/index", to: "eles#index", as: "eles"
  get "eles/show/:id", to: "eles#show", as: "ele"
  get "pros/index", to: "pros#index", as: "pros"
  get "eles/show/:id", to: "eles#show", as: "pro"
  
end
