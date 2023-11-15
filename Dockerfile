FROM nginx:latest
LABEL com.centurylinklabs.watchtower.enable=false
RUN rm -f /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /www/index.html
RUN chmod 777 /www/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
