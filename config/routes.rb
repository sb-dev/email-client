Rails.application.routes.draw do
  get '/indox(/:id)' => 'indox#index', as: :conversation
end
