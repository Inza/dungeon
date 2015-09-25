class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :state
      t.datetime :state_changed_at
      t.integer :cost
      t.references :project, index: true
      t.references :user, index: true
      t.references :budget, index: true
      t.date :due_date

      t.timestamps
    end
  end
end
