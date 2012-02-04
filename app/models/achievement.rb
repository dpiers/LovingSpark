class Spark < ActiveRecord::Base
has_attached_file :icon, :styles => { :small => "150x150>" },
                  :url  => "/assets/sparks/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/sparks/:id/:style/:basename.:extension"

validates_attachment_presence :icon
validates_attachment_size :icon, :less_than => 5.megabytes
validates_attachment_content_type :icon, :content_type => ['image/jpeg', 'image/png']
end
