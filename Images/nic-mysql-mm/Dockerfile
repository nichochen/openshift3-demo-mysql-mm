FROM  openshift/mysql-55-rhel7
USER root
# move all confugration files into container
ADD files/* /usr/share/container-scripts/mysql/
RUN chmod +x /usr/share/container-scripts/mysql/*.sh 
RUN chmod +x /usr/share/container-scripts/mysql/run*
RUN mv  /usr/share/container-scripts/mysql/run-mysqld-mm /usr/bin/
USER mysql

EXPOSE 3306

