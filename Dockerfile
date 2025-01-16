FROM nginxinc/nginx-unprivileged AS runner
WORKDIR /usr/share/nginx/html

RUN mkdir -p /var/cache/nginx/client_temp && chmod 755 /var/cache/nginx/client_temp
RUN mkdir -p /var/cache/nginx/proxy_temp && chmod 755 /var/cache/nginx/proxy_temp

COPY ./ ./
COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]