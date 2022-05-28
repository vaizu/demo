Rails.application.routes.draw do

  root to: "homes#top"

  get 'hazimete' => 'homes#hazimete'

  get 'mail' => 'homes#mail'

  get 'faq' => 'homes#faq'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
