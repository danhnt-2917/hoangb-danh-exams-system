Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root to: "static_pages#index"

    resources :exams

    namespace :admin do
      resources :questions, only: %i(new create index)
      root "home#index"
      resources :exams
    end
  end
end
