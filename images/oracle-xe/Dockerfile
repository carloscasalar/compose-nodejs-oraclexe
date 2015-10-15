FROM sath89/oracle-xe-11g:latest

# Install git client and ssh server
RUN apt-get -y update && apt-get install -y git

# Create a folder for scripts
RUN mkdir /u01/scripts

# Checkout my sql toolbox
RUN git clone https://github.com/SirRagnar/sqlPlusToolBox.git /u01/scripts

# Unlock HR account and reset its passwod to HR
RUN mkdir /u01/scripts/init
COPY unlockhr.* /u01/scripts/init/
RUN  chmod +x /u01/scripts/init/unlockhr.sh
#RUN /bin/bash sqlplus -S system/oracle @/u01/scripts/init/unlockhr.sql
RUN /u01/scripts/init/unlockhr.sh
RUN rm -rf /u01/scripts/init/
