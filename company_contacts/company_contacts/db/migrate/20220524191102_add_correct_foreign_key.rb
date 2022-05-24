class AddCorrectForeignKey < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses, :account_id, :integer
  end
end
