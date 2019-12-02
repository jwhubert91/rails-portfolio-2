class ApplicationController < ActionController::Base
	include DeviseWhitelist
	include SetSource
	include DefaultPageContent
	include CurrentUserConcern

	# # code for new custom gemfile
	# before_action :set_copyright

	# def set_copyright
	# 	@copyright = HubertCopyrightTool::Renderer.copyright("James Hubert","All rights reserved")
	# end

	# module HubertCopyrightTool
	# 	class Renderer
	# 		def self.copyright(name,msg)
	# 			"&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
	# 		end
	# 	end
	# end

end