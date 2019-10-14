class RemoveOdometerStartFromShorttermtrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :shorttermtrucks, :odometer_start, :integer
  end
end
