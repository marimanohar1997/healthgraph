class Post < ApplicationRecord
  mount_uploader :attachment,AttachmentUploader
  has_many :comments, :dependent => :destroy   
    include SoftDelete

end
