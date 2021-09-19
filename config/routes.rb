Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions' }

  root 'home#top'
  resources :users
end

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
#             root GET    /                                                                                        home#top
#            users GET    /users(.:format)                                                                         users#index
#                  POST   /users(.:format)                                                                         users#create
#         new_user GET    /users/new(.:format)                                                                     users#new
#        edit_user GET    /users/:id/edit(.:format)                                                                users#edit
#             user GET    /users/:id(.:format)                                                                     users#show
#                  PATCH  /users/:id(.:format)                                                                     users#update
#                  PUT    /users/:id(.:format)                                                                     users#update
#                  DELETE /users/:id(.:format)                                                                     users#destroy
# rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
# rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
# rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create