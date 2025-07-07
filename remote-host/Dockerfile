FROM fedora:43

SHELL ["/bin/bash", "-exo", "pipefail", "-c"]

RUN yum -y install openssh-server && \
  yum -y install curl && \
  yum -y install unzip

RUN useradd remote_user && \
  echo "1234" | passwd --stdin remote_user && \
  mkdir /home/remote_user/.ssh && \
  chmod 700 /home/remote_user/.ssh

COPY .ssh/remote-key.pub /home/remote_user/.ssh/authorized_keys

RUN chown -R remote_user:remote_user /home/remote_user/.ssh && \
  chmod 600 /home/remote_user/.ssh/authorized_keys

RUN ssh-keygen -A

EXPOSE 22

RUN yum -y install mysql

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
  unzip awscliv2.zip && \
  rm -f awscliv2.zip && \
  ./aws/install

CMD ["/usr/sbin/sshd", "-D"]
