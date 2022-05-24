class CreateCreditCards < ActiveRecord::Migration[7.0]
  def change
    create_table :credit_cards do |t|
      t.string :number
      t.string :expiraton_date
      t.integer :owner_id

      t.timestamps
    end
  end
end
