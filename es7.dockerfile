# this is patched dockerfile with hunspell dicts
FROM docker.elastic.co/elasticsearch/elasticsearch:7.10.1

ADD hunspell /usr/share/elasticsearch/config/hunspell
COPY es-configs /usr/share/elasticsearch/config/synonims
