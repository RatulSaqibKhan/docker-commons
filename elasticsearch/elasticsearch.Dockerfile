ARG ELASTICSEARCH_KIBANA_IMAGE_TAG=8.15.2

FROM docker.elastic.co/elasticsearch/elasticsearch:${ELASTICSEARCH_KIBANA_IMAGE_TAG}

ARG ELASTICSEARCH_CERTS_DIR=/usr/share/elasticsearch/config/certificates

LABEL maintainer="Proshanta Barman <proshanta@brainstation-23.com>"

COPY ./.commons/certs ${ELASTICSEARCH_CERTS_DIR}
