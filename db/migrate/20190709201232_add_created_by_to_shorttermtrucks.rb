class AddCreatedByToShorttermtrucks < ActiveRecord::Migration[5.1]
  def change
    add_column :shorttermtrucks, :created_by, :string
  end
end
