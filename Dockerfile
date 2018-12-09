FROM tutum/tomcat

MAINTAINER herve Meftah <dockerlite@gmail.com>

VOLUME /tmp

ADD webapp/target/webapp*.war /tomcat/webapps/webapp.war

RUN bash -c 'touch /tomcat/webapps/webapp.war'

ENTRYPOINT ['/tomcat/bin/startup.sh', '--foreground']
