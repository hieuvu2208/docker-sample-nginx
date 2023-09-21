FROM image-registry.openshift-image-registry.svc:5000/openshift/nginx

USER 0

COPY /app/out /usr/share/nginx/html
COPY /app/next-routes.conf /etc/nginx/

COPY default.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html/

CMD ["nginx", "-g", "daemon off;"]
