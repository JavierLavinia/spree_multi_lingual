Spree::Admin::TaxonomiesController.class_eval do
  def get_children
    @lang = params[:lang]
    @taxons = Spree::Taxon.find(params[:parent_id]).children

    respond_with(@taxons)
  end

end
