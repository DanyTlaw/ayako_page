ActiveAdmin.register Picture do

  permit_params :theme_id, :name, :price, :count, :url, :for_sale, :description, :version, :size

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
  form do |f|
    f.inputs "Picture Details" do
      f.input :theme_id, :label => 'Theme', as: :select, collection: Theme.all
      f.input :name
      f.input :version
      f.input :price
      f.input :count
      f.input :url, as: :file
      f.input :for_sale, as: :radio
      f.input :description
      f.input :size
    end
    f.actions
  end

end
