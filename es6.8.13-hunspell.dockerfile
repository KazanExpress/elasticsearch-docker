# this is patched dockerfile with hunspell dicts
FROM docker.elastic.co/elasticsearch/elasticsearch:6.8.13

ADD hunspell /usr/share/elasticsearch/config/hunspell