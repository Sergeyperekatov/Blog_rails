class Comment < ApplicationRecord
  validates :body, length: { maximum: 4000 }
  belongs_to :article
  belongs_to :user, optional: true
end
