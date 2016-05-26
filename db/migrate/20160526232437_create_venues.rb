class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :venue_name
      t.string :venue_addr1
      t.string :venue_addr2
      t.string :venue_town
      t.string :venue_city
      t.string :venue_postcode
      t.string :venue_paypal_email

      t.timestamps null: false
    end
  end
end
