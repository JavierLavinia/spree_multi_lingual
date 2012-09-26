Spree::Admin::TaxonomiesController.class_eval do
  def get_children
    parent_id, @lang = params[:parent_id].split('_')
    
    @taxons = Spree::Taxon.find(parent_id).children

    respond_with(@taxons)
  end

end
