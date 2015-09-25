ActiveAdmin.register Team do
  permit_params :name, :invoicing_id_number, :invoicing_company_name, :invoicing_email, :invoicing_contact_person_first_name, :invoicing_contact_person_last_name, :invoicing_company_website

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


end
