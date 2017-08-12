FROM debian:buster-slim

RUN apt-get -qq update \
	&& DEBIAN_FRONTEND=noninteractive apt-get -qq install -y --no-install-recommends \
	tcpdump \
	strace \
	dnsutils \
	mtr \
	nmap \
	vim \
	build-essential \
	curl \
	ca-certificates \
	git \
	python3 \
	python3-venv \
	bash-completion \
	&& rm -rf /var/lib/apt/lists/*
