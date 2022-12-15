# File `Dockerfile`

FROM nginx:1.23-alpine

COPY --chown=nginx \
     ./nginx.conf /etc/nginx/conf.d/default.conf

COPY --chown=nginx \
     ./auth_conf /etc/nginx/authfile/auth_conf

COPY --chown=nginx \
     --from=tarampampam/error-pages \
     /opt/html/ghost /usr/share/nginx/errorpages/_error-pages

