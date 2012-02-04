class AddAttachmentIconToSpark < ActiveRecord::Migration
  def self.up
    add_column :sparks, :icon_file_name, :string
    add_column :sparks, :icon_content_type, :string
    add_column :sparks, :icon_file_size, :integer
    add_column :sparks, :icon_updated_at, :datetime
  end

  def self.down
    remove_column :sparks, :icon_file_name
    remove_column :sparks, :icon_content_type
    remove_column :sparks, :icon_file_size
    remove_column :sparks, :icon_updated_at
  end
end
