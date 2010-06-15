ActionController::Routing::Routes.draw do |map|
  map.resources :users do |user|
    user.resources :ideas, :except => [:new, :create]
  end

  map.resources :ideas, :only => [:index, :new, :create, :show] do |idea|
    idea.resources :comments, :only => :create
    idea.resources :ratings, :only => :create
  end

  map.root :controller => :ideas

  map.connect "/login", :controller => :user_sessions, :action => :create, :conditions => {:method => :post}
  map.login "/login", :controller => :user_sessions, :action => :new
  map.signup "/signup", :controller => :users, :action => :new
end
