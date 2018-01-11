FROM centos:latest
ENV ES_PKG_NAME kibana
# ADD $ES_PKG_NAME.tar.gz /usr/share/
ADD kibana/ /usr/share/$ES_PKG_NAME/
#RUN cd /usr/share/ && \
#mv $ES_PKG_NAME kibana && \
#chmod +x /usr/share/kibana/bin/*
ENV PATH /usr/share/kibana:$PATH
#RUN kibana plugin --install elastic/sense
#RUN kibana plugin --install elasticsearch/marvel/latest
EXPOSE 5601
CMD ["bin/kibana"]