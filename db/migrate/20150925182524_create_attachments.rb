class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :name
      t.string :content_type
      t.string :file
      t.references :offer, index: true

      t.timestamps
    end
  end
end
