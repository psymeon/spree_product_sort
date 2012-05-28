Deface::Override.new(:virtual_path => 'spree/admin/shared/_product_sub_menu',
		     :name => 'add_product_sorting_tab',
		     :insert_bottom => "[data-hook='admin_product_sub_tabs']",
		     :text => %q{<%= tab :product_sorting, :route => 'positions_admin_product_taxons' %>}
)
