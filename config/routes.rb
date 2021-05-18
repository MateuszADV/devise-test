Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    resources :notes
    get 'pecunia/index'
    devise_for :users
    # get 'home/index'
    root 'home#index' 

    get 'pecunia/index', to: 'pecunia#index', as: 'pecunia'

    # TESTY
    get 'test/index'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end
