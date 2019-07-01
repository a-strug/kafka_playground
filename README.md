# Kafka Playground

An example using Kafka with `ruby-kafka` & `racecar` gems.

## Setup

1. Build
   ```bash
   docker-compose build
   ```

## Run

1. Run Docker
   ```bash
   docker-compose up
   ```
   
2. Run Consumer within `app` container
   ```bash
   # docker-compose exec app bash
   racecar --require consumer Consumer
   ```
   
3. Run Producer within `app` container
   ```bash
   # docker-compose exec app bash
   ruby producer.rb
   ```
   
4. Consumer will prints `Hello World` with current time. You can run Producer multiple times to send more messages.