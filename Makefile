.PHONEY: all

IMAGE=docker.elastic.co/logstash/logstash:7.16.3

all:
	docker run -it \
	-v $(shell pwd)/pipeline/:/usr/share/logstash/pipeline/ \
	-v $(shell pwd)/logs:/usr/logs \
	 $(IMAGE) logstash --config.reload.automatic -f /usr/share/logstash/pipeline/logstash.conf
