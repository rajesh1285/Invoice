class Task < ApplicationRecord
	include ActionController::MimeResponds
	include ActionController::Helpers
	include ActionController::Cookies
	include ActionController::ImplicitRender
end
