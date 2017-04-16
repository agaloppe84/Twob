class CreateQuotations < ActiveRecord::Migration[5.0]
  def change
    create_table :quotations do |t|
      t.string :email
      t.string :lastname
      t.string :firstname
      t.string :city
      t.string :phone
      t.string :zipcode
      t.string :blindtype
      t.text :message
      t.string :address
      t.boolean :treated, default: false

      t.timestamps
    end
  end
end
