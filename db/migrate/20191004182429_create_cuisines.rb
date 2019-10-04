class CreateCuisines < ActiveRecord::Migration[6.0]
  def change
    create_table :cuisines do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
