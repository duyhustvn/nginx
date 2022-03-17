FROM nginx

ARG ARG_BRANCH
ARG ARG_VERSION
ARG ARG_IMG_TAG
ARG ARG_ENV
ARG ARG_BUILD_DATE

WORKDIR /root/

ENV LC_ALL=C.UTF-8 \
    LANG=C.UTF-8

RUN echo "alias ll='ls -alF'" >> ~/.bashrc && \
    apt-get update && \
    apt-get install --no-install-recommends --no-install-suggests -y curl htop iputils-ping net-tools iproute2 telnet ethtool nano vim redis-tools

COPY nginx.conf /etc/nginx/

ENV APP_BRANCH=${ARG_BRANCH} \
    APP_VERSION=${ARG_VERSION} \
    APP_IMG_TAG=${ARG_IMG_TAG} \
    APP_ENV=${ARG_ENV} \
    APP_BUILD_DATE=${ARG_BUILD_DATE}
