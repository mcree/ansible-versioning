FROM ubuntu:16.04
RUN \
    apt-get update && \
    apt-get -y install openssh-server python sudo && \
    mkdir /var/run/sshd && \
    echo 'root:root' | chpasswd

RUN sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

RUN mkdir /root/.ssh
ADD authorized_keys /root/.ssh/
RUN chmod u=rw,go= -R /root/.ssh

CMD ["/usr/sbin/sshd", "-D"]
