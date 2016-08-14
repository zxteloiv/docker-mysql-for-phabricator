# A mysql image configured for phabricator based on mysql/mysql-server:5.7.14
FROM    mysql/mysql-server:5.7.14
MAINTAINER Haruki Kirigaya <zxteloiv@gmail.com>

ADD     my-phabricator.cnf /etc/my.cnf.d/my-phabricator.cnf
RUN     echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf

ADD     download.sh /opt/mysql/download.sh
RUN     bash /opt/mysql/download.sh

