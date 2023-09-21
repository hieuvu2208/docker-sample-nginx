FROM nginx

USER 0

COPY default.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html/

CMD ["nginx", "-g", "daemon off;"]
