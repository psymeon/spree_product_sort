Spree::Core::Engine.routes.draw do

  match 'admin/taxons/reorder_products/:id' => 'admin/taxons#reorder_products', :via => :put

  namespace :admin do
                # callback for jQuery sort action
       
    resources :product_taxons do
      collection do
        get :positions
      end
    end
      
  end
end
