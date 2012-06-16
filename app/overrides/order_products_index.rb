Deface::Override.new(:virtual_path => 'spree/products/index',
		     :name => 'order_products_index',
		     :replace_contents => "[data-hook='homepage_products']",
		     :text => %q{<%  if @taxon %>
      <%    tid = @taxon.id %>
    <%  else %>
      <%    tid = 0 %>
      <%- #covers special case of main index %>
    <%  end %>

    <%= render :partial => 'spree/shared/products', :locals => { :products => @products.ordered(tid), :taxon => @taxon } %>},
    		     :original => %q{<div data-hook="homepage_products">
    <%= render :partial => 'spree/shared/products', :locals => { :products => @products, :taxon => @taxon } %>
  </div>}
		    )
