class Question < ActiveRecord::Base
	belongs_to :user
	has_many :answers, dependent: :destroy

	validates_presence_of :name, :body

	def self.search(search)
		where("name ILIKE ? OR body ILIKE ? ", "%#{search}%", "%#{search}%")
	end
end
