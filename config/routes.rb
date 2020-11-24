Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #creates all 7 actions for the apartments model, index, show, new, create, edit, update,  destroy
  resources :apartments

  # Navbar pages, contacts, partners and to contact us for new aparments
  get '/anunciar-imoveis', to: 'pages#anunciar'
  get '/parceiros', to: 'pages#parceiros'
  get '/parceiros/estudiocachine', to: 'pages#cachine'
  get '/parceiros/brunobou', to: 'pages#bruno_bou'
  get '/contatos', to: 'pages#contatos'
end
