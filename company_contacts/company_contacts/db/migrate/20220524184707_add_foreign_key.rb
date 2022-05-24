class AddForeignKey < ActiveRecord::Migration[7.0]
  def change
    add_column :accounts, :account_id, :integer
  end
end
