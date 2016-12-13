  module Telegram
    module MyBot
      module Helper
        private
        def response_with msg, action = :sendMessage
          case action
          when :sendMessage
            msg = 'No data' if msg.to_s.blank?
            { action: action, msg: {text: msg} }
          when :sendLocation
            if msg.to_s.blank?
              { action: action, msg: {text: 'No data'} }
            else
              { action: action, msg:{latitude: msg[:latitude], longitude: msg[:longitude]} }
            end
          end
        end
      end
    end
  end