FROM sath89/oracle-xe-11g:latest

# Install git client and ssh server
RUN apt-get -y update && apt-get install -y git

# Create a folder for scripts
RUN mkdir /u01/scripts

# Checkout my sql toolbox
RUN git clone https://github.com/SirRagnar/sqlPlusToolBox.git /u01/scripts

# Unlock HR account and reset its passwod to HR
RUN mkdir /u01/scripts/init
COPY unlockhr.sql /u01/scripts/init/
RUN echo exit | sqlplus SYSTEM/ORACLE@XE @/u01/scripts/init/unlockhr.sql
