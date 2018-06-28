Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "/test_url" => "pages#query_pages_method"
  # get "/guessing_game" => "pages#guessing_game_method"
  get "/get_segments_params/:variable" => "pages#guessing_game_segments"

  post "/body_params_url" => "pages#body_params_method"
end

