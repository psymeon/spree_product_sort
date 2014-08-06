Spree::Taxon.class_eval do
  has_many :product_taxons, ->{order("#{Spree::ProductTaxon.quoted_table_name}.position")}
  has_many :products, ->{order("#{Spree::ProductTaxon.quoted_table_name}.position")}, :through=>:product_taxons
end
