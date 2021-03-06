Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root 'posts#index'
  resources :users
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end

  delete '/posts/:id/destroy' => 'posts#destroy'

end

# Rails 5.2.6
# session = login
# registration = signup

# Prefix Verb   URI Pattern                                                                              Controller#Action
# new_user_session GET    /users/sign_in(.:format)                                                                 users/sessions#new
#     user_session POST   /users/sign_in(.:format)                                                                 users/sessions#create
# destroy_user_session DELETE /users/sign_out(.:format)                                                                users/sessions#destroy
# new_user_password GET    /users/password/new(.:format)                                                            devise/passwords#new
# edit_user_password GET    /users/password/edit(.:format)                                                           devise/passwords#edit
#    user_password PATCH  /users/password(.:format)                                                                devise/passwords#update
#                  PUT    /users/password(.:format)                                                                devise/passwords#update
#                  POST   /users/password(.:format)                                                                devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)                                                                  users/registrations#cancel
# new_user_registration GET    /users/sign_up(.:format)                                                                 users/registrations#new
# edit_user_registration GET    /users/edit(.:format)                                                                    users/registrations#edit
# user_registration PATCH  /users(.:format)                                                                         users/registrations#update
#                  PUT    /users(.:format)                                                                         users/registrations#update
#                  DELETE /users(.:format)                                                                         users/registrations#destroy
#                  POST   /users(.:format)                                                                         users/registrations#create
#   users_sign_out GET    /users/sign_out(.:format)                                                                devise/sessions#destroy
#             root GET    /                                                                                        posts#index
#            users GET    /users(.:format)                                                                         users#index
#                  POST   /users(.:format)                                                                         users#create
#         new_user GET    /users/new(.:format)                                                                     users#new
#        edit_user GET    /users/:id/edit(.:format)                                                                users#edit
#             user GET    /users/:id(.:format)                                                                     users#show
#                  PATCH  /users/:id(.:format)                                                                     users#update
#                  PUT    /users/:id(.:format)                                                                     users#update
#                  DELETE /users/:id(.:format)                                                                     users#destroy
#       post_likes POST   /posts/:post_id/likes(.:format)                                                          likes#create
#        post_like DELETE /posts/:post_id/likes/:id(.:format)                                                      likes#destroy
#            posts GET    /posts(.:format)                                                                         posts#index
#                  POST   /posts(.:format)                                                                         posts#create
#         new_post GET    /posts/new(.:format)                                                                     posts#new
#        edit_post GET    /posts/:id/edit(.:format)                                                                posts#edit
#             post GET    /posts/:id(.:format)                                                                     posts#show
#                  PATCH  /posts/:id(.:format)                                                                     posts#update
#                  PUT    /posts/:id(.:format)                                                                     posts#update
#                  DELETE /posts/:id(.:format)                                                                     posts#destroy
#                  DELETE /posts/:id/destroy(.:format)                                                             posts#destroy
# rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
# rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
# rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
