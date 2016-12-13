module Telegram
  class PartyInDaHouseBot
    def run
      token = Rails.application.secrets.telegram["bot"]['token']
      Telegram::Bot::Client.run(token) do |bot|
        bot.listen do |message|
          ActionEvents.act(bot, message)
        end
      end
    end
  end
end
