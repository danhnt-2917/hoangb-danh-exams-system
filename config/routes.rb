Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root to: "static_pages#index"

    resources :questions, only: %i(new create)
    resources :exams
  end
end
