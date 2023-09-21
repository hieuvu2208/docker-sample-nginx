FROM image-registry.openshift-image-registry.svc:5000/openshift/nginx

USER 0

COPY --from=builder /app/out /usr/share/nginx/html
COPY --from=builder /app/next-routes.conf /etc/nginx/

COPY default.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html/

CMD ["nginx", "-g", "daemon off;"]
