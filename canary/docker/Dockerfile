FROM nginx:latest
MAINTAINER Ali Javadi "ali.javadi@cafebazaar.ir"

ADD nginx.conf /
ADD run.sh /
RUN chmod a+x run.sh

CMD ["/run.sh"]
