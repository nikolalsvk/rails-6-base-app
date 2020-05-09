Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :render_async, :only => [:show] do
    get :show_no_jquery

    get  :wave
    post :bump
    get  :error
    get  :nested
  end
end
