FROM nginx:alpine

RUN mkdir -p /usr/share/nginx/html && rm -f /usr/share/nginx/html/index.html

COPY index.html /usr/share/nginx/html/index.html