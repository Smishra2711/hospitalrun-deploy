FROM couchdb:3.2.2

# enable single-node mode
RUN mkdir -p /opt/couchdb/etc/local.d
RUN echo '[couchdb]' > /opt/couchdb/etc/local.d/10-single-node.ini
RUN echo 'single_node=true' >> /opt/couchdb/etc/local.d/10-single-node.ini

ENV COUCHDB_USER=admin
ENV COUCHDB_PASSWORD=changeme

EXPOSE 5984
CMD ["couchdb"]
