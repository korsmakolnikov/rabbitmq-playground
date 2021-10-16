# RabbitMQ playground
![do not use this brain!](./do-not-use-this-brain.jpg)

I created this playground to test and experiment performace of RabbitMQ. Do not use in production!

## Usage
Run the container 
```bash
?> docker-compose run --service-ports app bash
```

I wrapped perftest in a script that already point to the RabbitMQ local instance. You don't need to provide `--uri` options. Just execute:
```bash
?> perftest
```

And pass all the options you want. You can find perftest documentation [here](https://rabbitmq.github.io/rabbitmq-perf-test/stable/htmlsingle/#basic-usage).
