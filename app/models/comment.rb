class Comment < ApplicationRecord
  belongs_to :post

  include SoftDelete
end


