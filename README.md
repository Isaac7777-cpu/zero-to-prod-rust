## Goal

Hopefully, I can learn how to write rust...

### PostgreSQL

1. First, we use the docker image.
   - To start with a new docker image, directly run
     ```sh
     ./scripts/init_db.sh
     ```
   - To start with an existing docker image, change the environmental variables in `init_db.sh` and run with option
     ```sh
     SKIP_DOCKER=true ./scripts/init_db.sh  
     ```
2. Then, we need to use the following instructions to check the relations in the docker image.
   ```sh
   # In your local terminal; Suppose you are using the default configurations
   psql -h localhost -U postgres -p 5432 -d newsletter

   # Then, the above should prompt your password (the default we use is just "password" the string in raw)
   # Now, you should go into the psql terminal, then run the following commands to see the tables.
   # Now, we can see two relations -- subscriptions and _sqlx_migrations
   \dt 
   ```

