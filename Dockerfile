FROM nginxinc/nginx-unprivileged:1.23 AS runner
WORKDIR /usr/share/nginx/html
COPY --from=builder . .

EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]