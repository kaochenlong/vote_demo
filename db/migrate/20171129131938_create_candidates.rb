class CreateCandidates < ActiveRecord::Migration[5.1]
  def change
    create_table :candidates do |t|
      t.string :name
      t.integer :age
      t.string :party

      t.timestamps
    end
  end
end
