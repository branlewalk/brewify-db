# brewify-db

### Overview


This project is meant to hold on to the scripts for the brewify database. 


### Setting up the Docker Image and Container


+ Create the image from Dockerfile
    
    `docker build .`

+ Create the container from docker-compose.yml

    `docker-compose up -d [container_name]`

+ Access the SQL Database to update the users

    `docker exec -it [container_name] mysql`

+ Command to update root user for access

    `CREATE USER 'root'@'%' IDENTIFIED BY 'some_pass';`

    `GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';`
    

### Initialize Database

+ Run initialize_database.py to create the schema, create the stored procedures and import ingredient data to the DB

    `python3 initialize_database.py`