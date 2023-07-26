FROM debian:latest
MAINTAINER Emmanuel Julian Jose dawnoftheapocalipsis@gmail.com
RUN apt update 
RUN apt install -y apache2 openssh-server sudo
RUN mkdir /var/run/sshd
COPY ./index.html /var/www/html/
COPY ./content/ /var/www/html/content/
RUN useradd -m -s /bin/bash -g root -G sudo -u 1000 web
RUN echo 'web:web' | chpasswd
expose 80 22
COPY script.sh script.sh
RUN chmod +x script.sh
CMD ["./script.sh"]
