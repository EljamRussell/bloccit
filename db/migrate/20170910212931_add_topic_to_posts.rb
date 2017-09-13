class AddTopicToPosts < ActiveRecord::Migration[5.1]
  def change
    # generated by rails generate migration AddTopicToPosts topic_id:integer:index
    # Add(Table ID to be added)   To (table to add the key to
    add_column :posts, :topic_id, :integer
    add_index :posts, :topic_id
  end
end