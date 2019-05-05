class Comment < ApplicationRecord
  validates :body, length: { maximum: 4000 }
  belongs_to :article
end
