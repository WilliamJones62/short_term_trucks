class AddOdometerEndToShorttermtrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :shorttermtrucks, :odometer_end, :integer
  end
end
