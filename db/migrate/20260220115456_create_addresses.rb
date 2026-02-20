class CreateAddresses < ActiveRecord::Migration[8.1]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :number
      t.string :complement
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :country
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
