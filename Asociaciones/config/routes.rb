Rails.application.routes.draw do


resources :libros
resources :prestamos
  root 'libros#new'

end
