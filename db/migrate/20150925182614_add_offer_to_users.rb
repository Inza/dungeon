class AddOfferToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :offer, index: true
  end
end
