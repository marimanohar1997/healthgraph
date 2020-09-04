class Post < ApplicationRecord
	validates :name, presence: true
	validates :attachment, presence: true



  mount_uploader :attachment,AttachmentUploader
  has_many :comments, :dependent => :destroy   
    include SoftDelete

end
