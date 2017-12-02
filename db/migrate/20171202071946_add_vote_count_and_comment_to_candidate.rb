class AddVoteCountAndCommentToCandidate < ActiveRecord::Migration[5.1]
  def change
    add_column :candidates, :vote_count, :integer, default: 0
    add_column :candidates, :comment, :text

    # add_column(table_name, column_name, type, options = {})
  end
end
