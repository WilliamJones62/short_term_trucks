class RemoveMileRateFromShorttermtrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :shorttermtrucks, :mile_rate, :decimal
  end
end
