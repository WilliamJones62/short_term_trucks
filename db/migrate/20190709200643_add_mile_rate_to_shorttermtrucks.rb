class AddMileRateToShorttermtrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :shorttermtrucks, :mile_rate, :decimal
  end
end
