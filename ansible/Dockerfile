FROM ubuntu:16.04
RUN apt-get update && apt-get -y install ansible iputils-ping openssh-client git subversion
RUN mkdir /root/.ssh
ADD id_rsa id_rsa.pub /root/.ssh/
RUN chmod u=rw,go= -R /root/.ssh

CMD cd /mnt/src && ./run-tests.sh



