class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :name
      t.refrences :CareProvider
      t.refrences :Patient

      t.timestamps
    end
  end
end
