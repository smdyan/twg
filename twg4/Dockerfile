FROM ubuntu:22.04
RUN echo 'APT::Install-Suggests "0";' >> /etc/apt/apt.conf.d/00-docker
RUN echo 'APT::Install-Recommends "0";' >> /etc/apt/apt.conf.d/00-docker
WORKDIR /twg
COPY wginit.sh wg0.conf ./
RUN apt-get update && apt-get install --no-install-recommends --yes wireguard iproute2 iptables iputils-ping
EXPOSE 51820
CMD ["/twg/wginit.sh"]
