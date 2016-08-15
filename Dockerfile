FROM websphere-liberty:webProfile7
#ADD DefaultServletEngine /config
ADD target/JavaHelloWorldApp.war /opt/ibm/wlp/usr/servers/defaultServer/dropins/
ADD target/JavaHelloWorldApp.war /opt/ibm/wlp/usr/servers/defaultServer/apps
#COPY server.xml /opt/ibm/wlp/usr/servers/defaultServer
ENV LICENSE accept
RUN installUtility install --acceptLicense defaultServer
