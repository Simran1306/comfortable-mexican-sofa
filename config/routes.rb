Rails.application.routes.draw do
  
  namespace :cms_admin do
    resources :layouts
    resources :pages
    resources :snippets
  end
  
  match '*cms_path', :to => 'cms_content#render_page', :via => :get
  
end
