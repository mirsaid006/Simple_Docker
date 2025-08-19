FROM debian:bookworm

RUN apt-get update && \
    apt-get install -y gcc libfcgi-dev spawn-fcgi nginx && \
    apt-get clean

# Server source code va build
COPY ./server /app/server
WORKDIR /app/server
RUN gcc mini_server.c -lfcgi -o mini_server

# Nginx config
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

# Entry point uchun script
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 80

CMD ["/start.sh"]
