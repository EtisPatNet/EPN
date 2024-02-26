FROM phusion/baseimage:focal-1.0.0
LABEL maintainer="EtisPatNet Developers <dev@etispatnet.org>"
LABEL description="Dockerised EtisPatNet, built from Travis"

ARG USER_ID
ARG GROUP_ID

ENV HOME /home/etispatnet

# add user with specified (or default) user/group ids
ENV USER_ID ${USER_ID:-1000}
ENV GROUP_ID ${GROUP_ID:-1000}
RUN groupadd -g ${GROUP_ID} etispatnet && \
    useradd -u ${USER_ID} -g etispatnet -s /bin/bash -m -d /home/etispatnet etispatnet && \
    mkdir /home/etispatnet/.etispatnet && \
    chown ${USER_ID}:${GROUP_ID} -R /home/etispatnet

COPY bin/* /usr/local/bin/

RUN chmod a+x /usr/local/bin/*

USER etispatnet

VOLUME ["/home/etispatnet"]

EXPOSE 16307 9999 26307 26308

WORKDIR /home/etispatnet
