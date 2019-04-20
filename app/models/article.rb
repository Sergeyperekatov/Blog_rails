class Article < ApplicationRecord
	validates :title, presence: true
  validates :text, presence: true
 has_many :comments, dependent: :delete_all

  def subject
    title
  end

  def last_comment
    comments.last
  end
end