FROM centos:latest as build
RUN yum install -y openssl
RUN yum install -y 

FROM centos:latest
COPY --from=build /usr/bin/openssl /usr/bin/
RUN openssl version
