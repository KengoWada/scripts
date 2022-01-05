# Scripts for setting up RaiD Backend Server

## Getting Started

- Create a new sudo user

  - `sudo adduser raid` The enter the users password

  - `sudo usermod -aG sudo raid`

  - `su - raid`

- Clone this repo and `cd scripts`

- Upload and execute the script `bash ./start.sh`

- Configure Nginx, PostgreSQL and Redis

  - Nginx:

    - Update the `nginx.conf` file to add the new values

    - Move the file `sudo mv /home/raid/scripts/nginx.conf /etc/nginx/`

    - Test the new config values `sudo nginx -t`. It should pass

    - Restart the server by `sudo nginx -s stop` then `sudo nginx`

  - PostgreSQL:

    - Login as admin `sudo -i -u postgres` and insert raid user password

    - The type `psql`

    - Give the `postgres` user a password `ALTER USER postgres PASSWORD <password>;`

    - Create the a database for the Django app `CREATE DATABASE raid_db;`

  - Redis:

    - Edit the `redis.conf` file `sudo nano /etc/redis/redis.conf`

    - Look for the word `supervised` and add `systemd`. The final line should be `supervised systemd`

    - Save and close the file then restart the redis server `sudo systemctl restart redis.service`

- Now start setting up the repos as described in their individual repos

## Notes

- You must create the `raid` user and do all work there at all times

- You'll have to run more than one ssh session to fully set up the backend

  - One session for the ML model

  - One for the Django app

  - One for the celery background tasks

- Terminate the instance immediately after using it
