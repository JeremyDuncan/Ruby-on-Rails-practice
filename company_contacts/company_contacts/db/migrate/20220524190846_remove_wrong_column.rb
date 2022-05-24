class RemoveWrongColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :accounts, :account_id
  end
end
