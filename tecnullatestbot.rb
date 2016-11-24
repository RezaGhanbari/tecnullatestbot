require 'telegram/bot'

token = '279053726:AAF2qZPawA6FZ0RhTpMwFfG5SESoDXTa5zk'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
      when '/start'
        bot.api.send_message(chat_id: message.chat.id, text: 'سلام . داداش داری اشتباه میزنی این ربات تست ما هست.')
      when '/tecnulla'
        bot.api.send_message(chat_id: message.chat.id, text: 'http://tecnulla.com  اینم از سایت آینده ما')
      when '/map'
        bot.api.send_message(chat_id: message.chat.id, text: 'آدرس شرکت ما')
        bot.api.send_location(chat_id: message.chat.id, latitude: -37.807416, longitude: 144.985339)
    end
  end
end