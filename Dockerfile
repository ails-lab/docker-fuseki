FROM openjdk:11-jre-slim

ARG JENA_VERSION="4.1.0"

#RUN apt-get update; apt-get -y install curl; rm -rf /var/lib/cache; \
#    cd /opt ; \
#    curl https://ftp.cc.uoc.gr/mirrors/apache/jena/binaries/apache-jena-fuseki-$JENA_VERSION.tar.gz | tar -zxf - && mv apache-jena-* fuseki && \
#    sed -i 's/ = localhostFilter/ = anon/g'  /opt/fuseki/run/shiro.ini

COPY apache-jena-fuseki-$JENA_VERSION /opt/fuseki

WORKDIR /fuseki 

RUN mkdir -p /fuseki/run

COPY shiro.ini /fuseki/run/shiro.ini

#COPY entrypoint.sh /entrypoint.sh
#RUN chmod a+x /entrypoint.sh

#ENTRYPOINT ["/entrypoint.sh"]

CMD /opt/fuseki/fuseki-server --tdb2 --update 
