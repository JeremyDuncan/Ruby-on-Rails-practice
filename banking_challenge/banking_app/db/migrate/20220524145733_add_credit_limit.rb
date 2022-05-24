class AddCreditLimit < ActiveRecord::Migration[7.0]
  def change
    add_column :credit_cards, :credit_limit, :float
  end
end
