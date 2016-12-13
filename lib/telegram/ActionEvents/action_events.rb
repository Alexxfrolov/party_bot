module Telegram
  module ActionEvents
    extend Helper

    def self.act(bot, msg)
      usr = User.check_user msg.chat.to_h
      action = msg.text.strip.gsub('/', '').split(' ').first.to_sym
      Proc.new{ incorrect_response(bot, msg); ruturn }.call unless action

      response = MyBot.try(action, usr)
      response[:msg].merge!(chat_id: msg.chat.id) if response

      bot.api.try(response[:action], response[:msg]) if response

    rescue Exception => e
      incorrect_response bot, msg
    end
  end
end