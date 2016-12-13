require 'telegram/bot'

# Require all telegram
# require all helpers
Dir.entries("#{Rails.root}/lib/telegram/").each do |f|
 Dir["#{Rails.root}/lib/telegram/#{f}/*helper.rb"].each{ |h| require(h) }
end

Dir["#{Rails.root}/lib/telegram/*.rb"].each { |f| require(f) }
Dir["#{Rails.root}/lib/telegram/MyBot/*.rb"].each { |f| require(f) }
Dir["#{Rails.root}/lib/telegram/ActionEvents/*.rb"].each { |f| require(f) }

