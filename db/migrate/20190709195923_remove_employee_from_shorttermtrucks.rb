class RemoveEmployeeFromShorttermtrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :shorttermtrucks, :employee, :string
  end
end
