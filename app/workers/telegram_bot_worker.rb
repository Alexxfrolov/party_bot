class TelegramBotWorker
  include Sidekiq::Worker
  sidekiq_options queue: :admin, uniq: true, retry: true

  def perform
    Telegram::PartyInDaHouseBot.new.run
  end
end