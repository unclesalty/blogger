class Article < ActiveRecord::Base
	def find
		@article = Article.find(params[:id])
	end
	
  	has_many :comments
  	has_attached_file :image, styles: { medium: "380" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

end
