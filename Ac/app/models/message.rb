class Message < ApplicationRecord
	after_create_commit {MessageBrodcastJob.perform_later self}
end
