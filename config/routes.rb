Rails.application.routes.draw do
  root "billboards#index"

 resources :billboard do 
  resources :artist
 end
 resources :artist do
  resources :song
end

end
