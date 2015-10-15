#!/bin/bash
#export PATH=/u01/app/oracle/product/11.2.0/xe/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
#export ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe
#export ORACLE_SID=XE
echo unlocking hr account
/bin/su - oracle -c "$ORACLE_HOME/bin/sqlplus -S system/oracle @/u01/scripts/init/unlockhr.sql"
