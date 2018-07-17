FROM debian:sid

MAINTAINER ePRINTit "support@eprintit.com"

# Install cups
RUN apt-get update && apt-get install cups whois -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD etc-cups /etc/cups
ADD usr-lib-cups-backend /usr/lib/cups/backend

VOLUME /etc/cups/
VOLUME /var/log/cups
VOLUME /var/spool/cups
VOLUME /var/cache/cups

EXPOSE 631
