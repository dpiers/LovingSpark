class SetCompletedToDefaultFalse < ActiveRecord::Migration
  def up
  	change_column :sparks, :completed, :boolean, :default => false
  end

  def down
  end
end
