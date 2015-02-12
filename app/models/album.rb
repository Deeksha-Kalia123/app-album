class Album < ActiveRecord::Base
belongs_to :user
has_many :pictures, dependent: :destroy

has_attached_file :photo 
validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
