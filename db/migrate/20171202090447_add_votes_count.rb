class AddVotesCount < ActiveRecord::Migration[5.1]
  def change
    add_column :candidates, :votes_count, :integer, default: 0
  end
end
