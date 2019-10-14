class AddOdometerStartToShorttermtrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :shorttermtrucks, :odometer_start, :integer
  end
end
