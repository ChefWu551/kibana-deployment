FROM centos:latest
ENV ES_PKG_NAME kibana
ADD kibana/ /usr/share/$ES_PKG_NAME/
ADD kibana.yml /usr/share/kibana/config/
EXPOSE 5601
CMD ["/usr/share/kibana/bin/kibana"]