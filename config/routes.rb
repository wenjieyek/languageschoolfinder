Rails.application.routes.draw do


  

 
  

 

  
  get 'certificates/index'

  get 'certificates/new'

  get 'certificates/show'

  get 'certificates/edit'

  get 'certificates/delete'

  get 'newsfeeds/index'

  get 'newsfeeds/new'

  get 'newsfeeds/show'

  get 'newsfeeds/edit'

  get 'newsfeeds/delete'

  get 'admins/login'
  get 'admins/menu'

  
  root 'users#index'
  #get 'school_users', :to=>'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

  get 'users/menu'
  get 'users/login'
  post 'users/attempt_login'
  get 'users/logout'

  get 'admins/login'
  get 'admins/menu'
  post 'admins/attempt_login'
  get 'admins/logout'



  resources :school_users  do


      
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

  resources :users,:except=>[:show] do
  
end


resources :admins do

    member do

      get :delete

    end

  end


  resources :feedbacks 


   resources :areas ,:except=>[:show] do

    member do

      get :delete

    end

   

  end


     resources :school_attachments do

    member do

      get :delete

    end

   

  end


  resources :languages ,:except=>[:show] do

    member do

      get :delete

    end

   

  end


    resources :states ,:except=>[:show] do

    member do

      get :delete

    end

   

  end


  resources :manage_schools do


  end

  resources :manage_users do


  end




   resources :newsfeeds do

    member do

      get :delete

    end

  end

   resources :certificates do

    member do

      get :delete

    end

  end




  
   



  	



 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
