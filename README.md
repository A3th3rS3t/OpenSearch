mkdir -p volumes/{config,opensearch-data,certs,logstash/{conf.d,certs}}

docker compose up --build -d