Rails.application.routes.draw do
  root "portfolio#index"
  get "/stacks/rails", to: "portfolio#index"
end
