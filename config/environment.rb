# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Bot::Application.initialize!
TelegramBotWorker.perform_async