FROM nginx

WORKDIR /root/

ENV LC_ALL=C.UTF-8 \
    LANG=C.UTF-8

# RUN echo "alias ll='ls -alF'" >> ~/.bashrc && \
#     apt-get update && \
#     apt-get install --no-install-recommends --no-install-suggests -y curl htop iputils-ping net-tools iproute2 telnet ethtool nano vim redis-tools

COPY nginx.conf /etc/nginx/

