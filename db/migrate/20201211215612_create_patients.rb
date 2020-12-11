class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :firstName
      t.string :lastName
      t.string :address
      t.integer :phoneNumber
      t.string :serviceNeeded
      t.text :DescriptionOfNeededCare
      

      t.timestamps
    end
  end
end
