# this is patched dockerfile with hunspell dicts
FROM docker.elastic.co/elasticsearch/elasticsearch:6.7.2

ADD hunspell /usr/share/elasticsearch/config/hunspell

ARG ACCESS_KEY
ARG SECRET_KEY

ARG ES_VERSION=6.7.2
RUN \
     curl https://artifacts.elastic.co/downloads/elasticsearch-plugins/repository-s3/repository-s3-$ES_VERSION.zip -o /tmp/repository-s3.zip && \
    /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch file:///tmp/repository-s3.zip  && \
    /usr/share/elasticsearch/bin/elasticsearch-keystore create && \
	echo "$ACCESS_KEY"  | /usr/share/elasticsearch/bin/elasticsearch-keystore add --stdin s3.client.default.access_key  && \
	echo "$SECRET_KEY"  | /usr/share/elasticsearch/bin/elasticsearch-keystore add --stdin s3.client.default.secret_key