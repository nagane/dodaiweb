class CreateDodesus < ActiveRecord::Migration
  def change
    create_table :dodesus do |t|
      t.string :name
      t.binary :image

      t.timestamps
    end
  end
end
