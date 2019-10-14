class RemoveFlatRateFromShorttermtrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :shorttermtrucks, :flat_rate, :decimal
  end
end
