class Word < ApplicationRecord
	has_many :englishes, dependent: :destroy
	validates :title, presence: true, length: { minimum: 1 }
end
