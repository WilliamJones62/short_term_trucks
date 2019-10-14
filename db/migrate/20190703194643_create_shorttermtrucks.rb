class CreateShorttermtrucks < ActiveRecord::Migration[5.1]
  def change
    create_table :shorttermtrucks do |t|
      t.string :truck
      t.string :ezpass
      t.string :wexcard
      t.date :given
      t.date :returned
      t.string :employee
      t.string :user_id

      t.timestamps
    end
  end
end
