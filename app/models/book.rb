class Book < ApplicationRecord
	belongs_to :user
	belongs_to :category
	has_many :review

	has_attached_file :book_img
    validates_attachment_content_type :book_img, content_type: /\Aimage\/.*\z/
end
