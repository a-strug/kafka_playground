require 'kafka'

# The first argument is a list of "seed brokers" that will be queried for the full
# cluster topology. At least one of these *must* be available. `client_id` is
# used to identify this client in logs and metrics. It's optional but recommended.
kafka = Kafka.new(['kafka1:19092', 'kafka2:19093'], client_id: 'kafka_playground')
kafka.deliver_message("Hello World #{Time.now.strftime('%H%M%S')}", topic: 'world')
