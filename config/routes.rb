Rails.application.routes.draw do



  root 'school_users#index'
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


    resources :teachers do

    member do

      get :delete

    end

  end


    resources :promotions do

    member do

      get :delete

    end

  end

  	



 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
