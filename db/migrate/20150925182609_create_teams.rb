class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :invoicing_id_number
      t.string :invoicing_company_name
      t.string :invoicing_email
      t.string :invoicing_contact_person_first_name
      t.string :invoicing_contact_person_last_name
      t.string :invoicing_company_website

      t.timestamps
    end
  end
end
