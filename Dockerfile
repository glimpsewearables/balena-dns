FROM balenalib/rpi-debian

RUN apt-get update
RUN apt-get install -y dnsmasq
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

COPY dnsmasq.conf /etc/dnsmasq.conf
COPY start.sh start.sh
