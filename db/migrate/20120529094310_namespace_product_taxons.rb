class NamespaceProductTaxons < ActiveRecord::Migration
  def self.up
    rename_table :product_taxons, :spree_product_taxons
  end

  def self.down
    rename_table :spree_product_taxons, :product_taxons
  end
end
