class CreateCareProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :care_providers do |t|
      t.string :firstName
      t.string :lastName
      t.string :address
      t.integer :phoneNumber
      t.string :serviceProvided
      t.text :Credentiels
      t.string :image

      t.timestamps
    end
  end
end
