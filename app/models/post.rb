class Post < ApplicationRecord
  enum status: { submitted: 0, approved: 1, rejected: 2 }
  belongs_to :user
	validates_presence_of :date, :body, :request
	validates :request, numericality: { greater_than: 0.0 }

  scope :posts_by, ->(user) { where(user_id: user.id) }


end
