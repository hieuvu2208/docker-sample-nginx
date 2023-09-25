FROM image-registry.openshift-image-registry.svc:5000/openshift/nginx

USER 0

RUN mkdir -p /var/cache/nginx/client_temp && \
    chown -R nginx:nginx /var/cache/nginx
