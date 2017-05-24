FROM kong:0.10.2
MAINTAINER Braedon Vickers, braedon@predicthq.com

COPY kong.conf.default /etc/kong/kong.conf.default
COPY kong /kong/kong
COPY kong-0.10.2-0.rockspec /kong/kong-0.10.2-0.rockspec
COPY Makefile /kong/Makefile

WORKDIR /kong
RUN yum install -y -q unzip && \
    make install
