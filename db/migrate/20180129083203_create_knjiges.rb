class CreateKnjiges < ActiveRecord::Migration
  def change
    create_table :knjiges do |t|
      t.string :naslov
      t.string :avtor
      t.text :opis
      t.datetime :datum_izdaje

      t.timestamps null: false
    end
  end
end
