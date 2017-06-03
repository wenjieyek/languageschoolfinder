Rails.application.routes.draw do


  #get 'school_users', :to=>'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

  resources :school_users do


      
  end

  	



 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
