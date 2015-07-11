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
    panel "Wichtig bei der Erfassung eines Bildes" do
        ul do
          li "Name:        Der Name muss egal bei welcher Version des selben Drucks immer gleich heissen!"
          li "Version:     Die Version eines Bildes ist die Druckversion"
          li "Count:       Hier wird die Anzahl der Bilder je Version, oder die Anzahl wieviel mal das gleiche
                    gleiche Produkt wie zb. eine Postkarte vorhanden ist.
                    Bei Versionen -> 1
                    Bei Karten    -> Anzahl z.B. 8"
          li "Description: Hier eine kurze Beschreibung des Bildes von ca 1-2 Sätzen."
          li "for_sale:    Ob das Produkt zum Verkauf steht -> Bei Verkauf eines Produktes dies unter edit ändern! WICHTIG"
          li "Size:        Die Grösse des Bildes"

        end
    end
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
