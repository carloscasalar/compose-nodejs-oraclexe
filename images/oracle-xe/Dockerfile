FROM sath89/oracle-xe-11g:latest

# Install git client and ssh server
RUN apt-get -y update && apt-get install -y git

# Create a folder for scripts
RUN mkdir /u01/scripts

# Checkout my sql toolbox
RUN git clone https://github.com/SirRagnar/sqlPlusToolBox.git /u01/scripts

RUN chown oracle:dba /u01/scripts

# Run sqlplus and execute `ALTER USER HR ACCOUNT UNLOCK IDENTIFIED BY password;`
