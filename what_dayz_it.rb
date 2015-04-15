require 'rest-client'
require 'twilio-ruby'
require 'pry'

account_sid = 'ACbcd5bdb8dce3a5d59e49d938fd5f279c'
auth_token = '[6157f4eaed6b2a112f392a567505096c]'
client = Twilio::REST::Client.new account_sid, auth_token


daily_video = [
    {day: 'Sunday', video: 'https://www.youtube.com/watch?v=btPJPFnesV4'},
    {day: 'Monday', video: 'https://www.youtube.com/watch?v=SsmVgoXDq2w'},
    {day: 'Tuesday', video: 'https://www.youtube.com/watch?v=avFq9errZCk'},
    {day: 'Wednesday', video: 'https://www.youtube.com/watch?v=6Fa7dI2TyDc'},
    {day: 'Thursday', video: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'},
    {day: 'Friday', video: 'https://www.youtube.com/watch?v=y6y_4_b6RS8'},
    {day: 'Saturday', video: 'https://www.youtube.com/watch?v=y6y_4_b6RS8'}
]

from = '+2036934059'

to = '+2035202674'

puts "Hello! What dayz it?"
day = gets
binding.pry
if day == "Tuesday"
  daily_video.map do |day,video|
   client.account.messages.create(
   :from => from,
   :to => to,
   :body => "Enjoy your daily video ya silly goose! #{video}"
   )
end

puts "Check Your Phone- and have a great #{day}"

end
