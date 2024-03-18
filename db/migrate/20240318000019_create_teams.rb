class CreateTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :teams do |t|
      t.integer :year
      t.text :image
      t.text :information

      t.timestamps
    end
  end
end
