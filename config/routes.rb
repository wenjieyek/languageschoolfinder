Rails.application.routes.draw do


  get 'courses/index'

  get 'courses/show'

  get 'courses/new'

  get 'courses/edit'

  get 'courses/delete'

  #get 'school_users', :to=>'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'



  resources :school_users do


      
  end

  resources :courses do

    member do

      get :delete

    end

  end

  	



 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
