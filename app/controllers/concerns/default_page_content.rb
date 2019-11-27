module DefaultPageContent
	extend ActiveSupport::Concern

	included do
		before_action :set_page_defaults
	end

	def set_page_defaults
		@page_title = "James Hubert's Portfolio"
		@seo_keywords = "James Hubert portfolio blog"
	end

end