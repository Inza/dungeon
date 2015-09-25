class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.text :description
      t.references :offer, index: true

      t.timestamps
    end
  end
end
