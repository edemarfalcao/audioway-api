class CreateStudios < ActiveRecord::Migration[7.0]
  def change
    create_table :studios do |t|
      t.string :studio_owner
      t.string :studio_name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.string :website
      

      t.timestamps
    end
  end
end
