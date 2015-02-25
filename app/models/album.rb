class Album < ActiveRecord::Base
 acts_as_paranoid
belongs_to :user
has_many :pictures
acts_as_taggable
has_attached_file :photo
validates_attachment_presence :photo
accepts_nested_attributes_for :pictures
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end