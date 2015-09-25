class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.references :project, index: true
      t.text :why
      t.text :how
      t.text :what
      t.references :user, index: true
      t.references :actor, index: true
      t.string :name
      t.integer :icon

      t.timestamps
    end
  end
end
