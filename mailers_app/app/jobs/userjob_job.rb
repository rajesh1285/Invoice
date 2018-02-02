class UserjobJob < ApplicationJob
  queue_as :default

      def perform(user)
      	puts "I am busy mailing newsletter."
          user_email = user
        UserMailer.welcome_email(user_email).deliver_now
      end
end
