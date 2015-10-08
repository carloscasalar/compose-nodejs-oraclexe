FROM sath89/oracle-xe-11g:latest

MAINTAINER Carlos Castillo Alarcon <sir.ragnar+dockerimage@gmail.com>

# Install git client and ssh server
RUN apt-get -y update && apt-get install -y git openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile


# Create a folder for scripts
RUN mkdir /u01/scripts

# Checkout my sql toolbox
RUN git clone https://github.com/SirRagnar/sqlPlusToolBox.git /u01/scripts

RUN chown oracle:dba /u01/scripts

# Allow ssh connections
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
CMD ["ls", "-la /"]
CMD ["/entrypoint.sh"]
