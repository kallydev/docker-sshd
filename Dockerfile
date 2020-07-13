FROM ubuntu:focal

RUN apt-get update && apt-get upgrade -y && apt-get install -y openssh-server

RUN mkdir /var/run/sshd

RUN echo 'root:docker-sshd' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]

