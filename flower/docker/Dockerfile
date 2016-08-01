FROM ubuntu:16.04

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget ca-certificates

# Install pip via package-manager 
RUN apt-get install -y python-pip

# add flower
RUN pip install redis flower

COPY run.sh /etc/run.sh
RUN chmod +x /etc/run.sh
ENTRYPOINT ["/etc/run.sh"]
