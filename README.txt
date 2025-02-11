# UofSC CCDC Linux Environment
Steps to set up dockers:

1. Install docker
https://www.docker.com/get-started/

2. Start Docker Desktop

3. Create docker network 
    docker network create my_secure_network --driver=bridge --subnet=192.168.200.0/24

3. In the terminal run
    docker-compose -f .\dockerfiles\ccdc_environment.yml up

4. Log into each machine below are the ports to be able to ssh into
    Command - ssh root@localhost -p #port

    SSH Ports:
    - 8001

    Passwords:
    root
    adminadmin

    Usernames:
    admin
    root

5. To stop the enviroment 
    docker-compose -f .\dockerfiles\ccdc_environment.yml down

6. To remove the enviroment 
    docker-compose -f ccdc_environment.yml rm -f

Thank you to this github repo for making these docker containers :) https://github.com/ucrcyber/ccdc_practice_env
