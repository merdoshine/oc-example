FROM nginx

ENV APP_LOCATION google
ENV NGINX_PORT 8080

COPY nginx.conf /etc/nginx/conf.d/orig.conf

RUN envsubst < /etc/nginx/conf.d/orig.conf > /etc/nginx/conf.d/default.conf

RUN rm /etc/nginx/conf.d/orig.conf

WORKDIR /app

RUN chown -R nginx:nginx /app && chmod -R 755 /app && \
        chown -R nginx:nginx /var/cache/nginx && \
        chown -R nginx:nginx /var/log/nginx && \
        chown -R nginx:nginx /etc/nginx/conf.d
RUN touch /var/run/nginx.pid && \
        chown -R nginx:nginx /var/run/nginx.pid

USER nginx

#EXPOSE <PORT_NUMBER>

CMD ["nginx", "-g", "daemon off;"]
