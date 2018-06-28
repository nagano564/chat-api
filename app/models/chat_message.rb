class ChatMessage < ApplicationRecord
  after_create_commit do
    ChatMessgeCreationEventBroadcastJob.perform_later(self)
  end
end
