class CreateShorttermtruckAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :shorttermtruck_attachments do |t|
      t.integer :shorttermtruck_id
      t.string :image
      t.string :title

      t.timestamps
    end
  end
end
