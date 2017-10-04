class BlogPost < ApplicationRecord

	has_many :comment, dependent: :destroy

	validates :title, :blog_entry, presence: true
	validates :title, length: { maximum: 140 }
end

