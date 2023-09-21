FROM image-registry.openshift-image-registry.svc:5000/openshift/nginx

USER 0

COPY default.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html/


