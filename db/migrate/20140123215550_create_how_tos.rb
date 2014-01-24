class CreateHowTos < ActiveRecord::Migration
  def change
    create_table :how_tos do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
