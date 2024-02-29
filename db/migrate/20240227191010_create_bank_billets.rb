class CreateBankBillets < ActiveRecord::Migration[7.1]
  def change
    create_table :bank_billets do |t|
      t.string :amount
      t.string :description
      t.date :expire_at

      t.string :customer_person_name
      t.string :customer_cnpj_cpf
      t.string :customer_state
      t.string :customer_city_name
      t.string :customer_zipcode
      t.string :customer_address
      t.string :customer_address_complement
      t.string :customer_address_number
      t.string :customer_neighborhood
      t.string :customer_person_type
      t.string :customer_email
      t.string :customer_phone_number

      t.timestamps
    end
  end
end
