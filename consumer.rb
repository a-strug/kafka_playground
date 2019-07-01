require 'racecar'

Racecar.configure do |config|
  config.brokers = ['kafka1:19092', 'kafka2:19093']
  config.client_id = 'kafka_playground'
  # config.logfile = 'log/consumer.log'
  config.log_level = 'info'
end

class Consumer < Racecar::Consumer
  subscribes_to 'world'

  def process(message)
    puts message.value
  end
end