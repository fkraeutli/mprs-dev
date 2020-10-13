# Metaphacts/ResearchSpace Example Dev Environment

## How to run

You will need [Docker](https://www.docker.com/) installed on your computer. You can find Docker for Mac [here](https://docs.docker.com/docker-for-mac/install/#download-docker-for-mac).

### First time run

Create an .env file by copying and, if necessary, editing the example:
```
cp .env.example .env
```

### Run

Start with
```
docker-compose up -d
```

Navigate to http://localhost:8888/. You should see the metaphactory platform and be able to login with the username 'admin' and password 'admin'

For exposing the Blazegraph port, start with
```
docker-compose -f docker-compose.yml -f docker-compose.exposeBlazegraph.yml up -d
```

With the default settings of .env Blazegraph schould be accessible at http://localhost:8889/blazegraph


### Stop and restart

To stop, execute in the Terminal
```
docker-compose start
```

To restart, type
```
docker-compose restart
```

### Remove

To remove the containers, type
```
docker-compose down
```
To remove the containers including their data volumes, type

```
docker-compose down -v
```
