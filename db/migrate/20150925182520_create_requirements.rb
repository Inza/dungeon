class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.references :offer, index: true
      t.string :name
      t.text :description
      t.integer :requirement_type

      t.timestamps
    end
  end
end
