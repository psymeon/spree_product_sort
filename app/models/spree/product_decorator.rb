Spree::Product.class_eval do
  has_many :product_taxons
  has_many :taxons, :through=>:product_taxons

  #default_scope :include=>:product_taxons, :order=>"spree_product_taxons.position"
  scope :ordered, {:include=>:product_taxons, :order=>"#{Spree::ProductTaxon.quoted_table_name}.position"}

  scope :available, lambda { |*args| 
    where(["#{Product.quoted_table_name}.available_on <= ?", args.first || Time.zone.now]).
      includes(:product_taxons).
      order("#{Spree::ProductTaxon.quoted_table_name}.taxon_id, #{Spree::ProductTaxon.quoted_table_name}.position") #group positions by taxon so that home page (0) works
  }

  def in_taxon?(taxon)
    case taxon
      when String
        self.taxons.map{|t| [t.name.downcase,t.permalink.downcase]}.flatten.include?(taxon.strip.downcase)
      when Integer
        self.taxons.map{|t| t.id}.include?(taxon)
      when Taxon
        self.taxons.include?(taxon)
      else
        false
    end
  end

end
