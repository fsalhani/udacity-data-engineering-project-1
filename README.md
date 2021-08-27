# Data Modeling with Postgres

## Project Contents

* [data](data) - folder containing Udacity's sample sparkify dataset for the project
* [sql_queries.py](sql_queries.py) - file created based on the project's template that contains the queries for drops, creates and inserts
* [create_tables.py](create_tables.py) - file created based on the project's template that resets the PostgreSQL database (always run before `etl.py`)
* [etl.py](etl.py) - file created based on the project's template that processes the data
* [requirements.txt](requirements.txt) - library requirements for the docker image that runs the data processing steps
* [run_etl.sh](run_etl.sh) - simple shell script to execute `create_tables.py`, then `etl.py`
* [Dockerfile](Dockerfile) - Dockerfile for a docker image that has all the requirements to run the etl process
* [docker-compose.yml](docker-compose.yml) - docker-compose file that creates two containers: one with a postgreSQL database to store the sparkify data and another with a metabase server to allow for data exploration
* [metabase](metabase) - set of files required to create the metabase container correctly and restore a backup of its database after the creation of a set of dashboards
* [dashboards](dashboards) - examples of analysis that could be performed in the data provided

## Setup

In order to run this project, you will need Docker and Docker-Compose. If you don't have them installed, you may follow the guides for [Docker](https://docs.docker.com/get-docker/) and [docker-compose](https://docs.docker.com/compose/install/)

Once you have them installed, run the following command in the project folder to start your metabase server and your postgres database containers (the first time running this will trigger a build of the metabase image):

```shell
docker-compose up
```

After this is up and running, open another terminal and build the image that will be responsible for the etl process:

```shell
docker build . -t project-1
```

Then, perform a docker run to execute the etl:

```shell
docker run --network host project-1
```

Those commands will setup the environment for you to access the data. Now, if you want to explore the database, access the metabase server on your localhost at http://localhost:3000

If you followed the steps above, you can find the songplay_metrics dashboard [here](http://localhost:3000/dashboard/1-songplay-metrics) and the user_base dashboard [here](http://localhost:3000/dashboard/2-user-base)
