class AddFlatRateToShorttermtrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :shorttermtrucks, :flat_rate, :decimal
  end
end
