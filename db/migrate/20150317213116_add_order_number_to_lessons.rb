class AddOrderNumberToLessons < ActiveRecord::Migration
  def change

    add_column :lessons, :order_number, :integer
  end
end
