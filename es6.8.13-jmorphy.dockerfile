FROM docker.elastic.co/elasticsearch/elasticsearch:6.8.13

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install "https://bintray.com/evo/elasticsearch/download_file?file_path=analysis-jmorphy2-0.2.2-es6.8.13.zip"

