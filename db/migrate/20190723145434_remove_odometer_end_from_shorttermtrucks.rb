class RemoveOdometerEndFromShorttermtrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :shorttermtrucks, :odometer_end, :integer
  end
end
