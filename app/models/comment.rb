class Comment < ApplicationRecord
  validates :name, presence: true


  belongs_to :post

  include SoftDelete
end


