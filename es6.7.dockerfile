# this is patched dockerfile with hunspell dicts
FROM docker.elastic.co/elasticsearch/elasticsearch:6.7.0

ADD hunspell /usr/share/elasticsearch/config/hunspell