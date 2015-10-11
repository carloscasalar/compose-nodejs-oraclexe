FROM collinestes/docker-node-oracle:0.12

# Show Linux distribution
RUN cat /proc/version



# Show node and npm version
RUN echo "Node version" && node -v
RUN echo "NPM version" && npm --version

# Install and run ssh daemon as shown in https://docs.docker.com/examples/running_ssh_service/
RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

# Developer user
ENV DEV_USER devop
ENV DEV_USER_PASS devop
RUN useradd -ms /bin/bash -p $DEV_USER_PASS $DEV_USER

# Change tO dev user so you can do docker `run -t -i image`
USER $DEV_USER
WORKDIR /home/$DEV_USER

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
