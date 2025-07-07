FROM fedora:43

SHELL ["/bin/bash", "-exo", "pipefail", "-c"]

RUN yum -y install openssh-server \
  && yum clean all \
  && rm -rf /var/cache/yum

RUN useradd remote_user && \
  echo "1234" | passwd --stdin remote_user && \
  mkdir /home/remote_user/.ssh && \
  chmod 700 /home/remote_user/.ssh

COPY .ssh/remote-key.pub /home/remote_user/.ssh/authorized_keys

RUN chown -R remote_user:remote_user /home/remote_user/.ssh && \
  chmod 600 /home/remote_user/.ssh/authorized_keys

RUN ssh-keygen -A

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
