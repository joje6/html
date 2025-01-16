FROM nginxinc/nginx-unprivileged AS runner
WORKDIR /usr/share/nginx/html

# RUN mkdir -p /var/cache/nginx/client_temp && chmod 755 /var/cache/nginx/client_temp
# RUN mkdir -p /var/cache/nginx/proxy_temp && chmod 755 /var/cache/nginx/proxy_temp
# RUN mkdir -p /var/cache/nginx/fastcgi_temp && chmod 755 /var/cache/nginx/fastcgi_temp
# RUN mkdir -p /var/cache/nginx/uwsgi_temp && chmod 755 /var/cache/nginx/uwsgi_temp
# RUN mkdir -p /var/cache/nginx/scgi_temp && chmod 755 /var/cache/nginx/scgi_temp

# RUN mkdir -p /var/cache/nginx/client_temp && \
#         mkdir -p /var/cache/nginx/proxy_temp && \
#         mkdir -p /var/cache/nginx/fastcgi_temp && \
#         mkdir -p /var/cache/nginx/uwsgi_temp && \
#         mkdir -p /var/cache/nginx/scgi_temp && \
#         chown -R nginx:nginx /var/cache/nginx && \
#         chown -R nginx:nginx /etc/nginx/ && \
#         chmod -R 755 /etc/nginx/ && \
#         chown -R nginx:nginx /var/log/nginx
# 
# RUN mkdir -p /etc/nginx/ssl/ && \
#     chown -R nginx:nginx /etc/nginx/ssl/ && \
#     chmod -R 755 /etc/nginx/ssl/

# RUN touch /var/run/nginx.pid && \
#        chown -R nginx:nginx /var/run/nginx.pid /run/nginx.pid


COPY ./ ./
COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]