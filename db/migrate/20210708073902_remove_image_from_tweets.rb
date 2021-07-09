class RemoveImageFromTweets < ActiveRecord::Migration[6.0]
  def change
    remove_column :tweets, :image, :string
  end
end
