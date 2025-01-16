FROM nginxinc/nginx-unprivileged AS runner
WORKDIR /usr/share/nginx/html

RUN mkdir -p /tmp/nginx/client_temp && chmod 755 /tmp/nginx/client_temp

COPY ./ ./
COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]