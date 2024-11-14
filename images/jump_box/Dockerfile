FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive


RUN apt update && apt upgrade -y
RUN apt install vim net-tools curl sudo man netcat nmap -y
RUN apt install openssh-server -y

RUN echo "root:root" | chpasswd

RUN chmod u+s /bin/bash
RUN chmod u+s /bin/sh
RUN chmod u+s /usr/bin/python3


COPY script.sh /run.sh
RUN chmod +x /run.sh

CMD ["bash", "-c", "while true; do sleep 1; done"]
ENTRYPOINT ["/run.sh"]