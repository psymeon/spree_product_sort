Deface::Override.new(:virtual_path => 'spree/taxons/show',
		     :name => 'order_taxon_show',
		     :replace_contents => "[data-hook='taxon_products']",
		     :text => %q{<%= render :partial => 'spree/shared/products', :locals => { :products => @products.ordered(@taxon.id), :taxon => @taxon } %>},
    		     :original => %q{<%= render :partial => 'spree/shared/products', :locals => { :products => @products, :taxon => @taxon } %>}
		    )
