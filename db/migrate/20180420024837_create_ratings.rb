class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.boolean :thumbs_up

      t.timestamps
    end
  end
end
