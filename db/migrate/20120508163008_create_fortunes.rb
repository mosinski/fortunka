class CreateFortunes < ActiveRecord::Migration
  def change
    create_table :fortunes do |t|
      t.text :cytat
      t.string :zrodlo

      t.timestamps
    end
  end
end
