# UofSC CCDC Linux Environment
Steps to set up dockers:

1. Install docker
https://www.docker.com/get-started/

2. Start Docker Desktop

3. In the terminal run
    docker-compose -f .\dockerfiles\ccdc_environment.yml up

4. Log into each machine below are the ports to be able to ssh into
    Command - ssh root@localhost -p #port

    SSH Ports:
    - 8400
    - 8500
    - 8600
    - 9000
    - 9100
    - 9200

    Passwords:
    root
    adminadmin

    Usernames:
    admin
    root

# Somethings you should be do to harden:
- Change all Passwords
- Change database Passwords
- Find any unused/exposed ports
- Enable and config firewall
- Check for backdoors or malicous processes
- Update System
- Shut down any unsed services
- Update packages
- Check and config logs
- Remove root login
- Remove users from sudo if not needed
- Harden SSH config files
- Harden web config files
- Check for crontabs


5. To stop the enviroment 
    docker-compose -f .\dockerfiles\ccdc_environment.yml down

6. To remove the enviroment 
    docker-compose -f ccdc_environment.yml rm -f

Thank you to this github repo for making these docker containers :) https://github.com/ucrcyber/ccdc_practice_env