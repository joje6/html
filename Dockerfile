FROM nginxinc/nginx-unprivileged AS runner
WORKDIR /usr/share/nginx/html

COPY ./ ./
COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]