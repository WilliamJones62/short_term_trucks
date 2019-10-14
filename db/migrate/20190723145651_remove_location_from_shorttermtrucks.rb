class RemoveLocationFromShorttermtrucks < ActiveRecord::Migration[5.1]
  def change
    remove_column :shorttermtrucks, :location, :string
  end
end
