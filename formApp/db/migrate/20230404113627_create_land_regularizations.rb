class CreateLandRegularizations < ActiveRecord::Migration[7.0]
  def change
    create_table :land_regularizations do |t|
      t.string :state
      t.string :city
      t.text :polygonal_area
      t.timestamps
    end
  end
end
