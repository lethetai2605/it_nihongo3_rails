class AddDetail < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :detail, :text
  end
end
