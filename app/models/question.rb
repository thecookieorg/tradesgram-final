class Question < ActiveRecord::Base
	belongs_to :user
	has_many :answers, dependent: :destroy

	validates_presence_of :name, :body

	def self.search(search)
		where("name LIKE ? OR body LIKE ? ", "%#{search}%", "%#{search}%")
	end
end
