class ChatChannel < ApplicationCabel::ChatChannel
  def subscribed
    stream_from 'chat_channel'
  end

  def unsubscribed; end

  def create(opts)
    ChatMessage.create(
      content: opts.fetch('content')
    )
  end
end