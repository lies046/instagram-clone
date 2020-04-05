Rails.application.routes.draw do
  devise_for :accounts

  get "/dashboard" => "accounts#index"

  resouces :posts only:[:new, :create, :show]
  root to: "public#homepage"
end
