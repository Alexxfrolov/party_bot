module Telegram
  module ActionEvents
    module Helper
      def incorrect_response(bot, msg)
        text = "Sorry, #{msg.from.first_name}, I am too stupid! \nUse /help"
        bot.api.sendMessage(chat_id: msg.chat.id, text: text)
      end
    end
  end
end