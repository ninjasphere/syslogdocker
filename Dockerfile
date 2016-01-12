FROM ubuntu:14.04
RUN apt-get update -q
RUN apt-get install rsyslog
VOLUME /dev
VOLUME /var/log
CMD ln -sf /dev/null /dev/xconsole && touch /var/log/syslog && chown syslog.syslog /var/log/syslog && rsyslogd -n

