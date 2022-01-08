class CreateFighters < ActiveRecord::Migration[7.0]
  def change
    create_table :fighters do |t|
      t.string :character
      t.string :L5
      t.string :M5
      t.string :H5
      t.string :S5
      t.string :L2
      t.string :M2
      t.string :H2
      t.string :S2
      t.string :JL
      t.string :JM
      t.string :JH
      t.string :JS
      t.string :J2H
      t.string :M6

      t.timestamps
    end
  end
end
