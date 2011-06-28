Linkbook::Application.routes.draw do
  resources :links, :only => :index
  resource :user_session, :only => [:new, :create, :destroy]
  
  # Use e.g. <%= link_to 'Logout', logout_path %>
  # match 'account' => ''
  # match 'logout' => 'user_sessions#destroy'
  
  # setting the home page
  root :to =>'user_sessions#new'
end