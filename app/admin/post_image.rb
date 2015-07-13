ActiveAdmin.register PostImage do

  permit_params :name, :image, :post_id
  
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  action_item only: :index do
    link_to 'Change Deutsch', change_locale_path(:de)
  end

  action_item only: :index do
    link_to 'Change Englisch', change_locale_path(:en)
  end
  
  form do |f| 
    f.inputs "Picture Details" do
        f.input :post_id, :label => 'Post', as: :select, collection: Post.all
        f.input :name
        f.input :image, as: :file
    end
    f.actions
end

end