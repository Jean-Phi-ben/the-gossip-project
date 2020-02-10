Rails.application.routes.draw do
  get 'static/team', to: 'static#team'

  get 'static/contact', to: 'static#contact'

  get 'home/gossip'
  
  get 'home/show_gossip', to: 'home#show_gossip'

  root 'home#gossip'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
