class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.string :state
      t.datetime :state_changed_at
      t.references :offer, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
