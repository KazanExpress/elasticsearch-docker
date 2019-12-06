# this is patched dockerfile with hunspell dicts
FROM docker.elastic.co/elasticsearch/elasticsearch:7.3.0

ADD hunspell /usr/share/elasticsearch/config/hunspell