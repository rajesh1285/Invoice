require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MailersApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    


	    Rails.application.configure do
	       config.active_job.queue_adapter = :sidekiq
	    end
	    Rails.application.configure do
	     config.web_console.whitelisted_ips = '192.168.3.3'
	    end
        Rails.application.configure do
          config.web_console.whiny_requests = false
        end
  end
end
