# this is patched dockerfile with hunspell dicts
FROM docker.elastic.co/elasticsearch/elasticsearch:6.7.2

ADD hunspell /usr/share/elasticsearch/config/hunspell
COPY es-configs /usr/share/elasticsearch/config/synonims