FROM docker.elastic.co/elasticsearch/elasticsearch:8.15.0
COPY /target/releases/elasticsearch-analysis-morphology-8.15.0.zip /tmp/elasticsearch-analysis-morphology-8.15.0.zip
RUN bin/elasticsearch-plugin install file:/tmp/elasticsearch-analysis-morphology-8.15.0.zip
