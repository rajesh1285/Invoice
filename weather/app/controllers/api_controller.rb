class ApiController < ApplicationController
 before_action :default_format
 private
	 def default_format
	 	request.format = :json
	 end

end