Rails.application.routes.draw do
  scope defaults: { format: :json } do

    root to: "status#index"

    controller :genres do
      get '/genres', action: :index
      get '/genres/:slug', action: :show
    end

  end
end