#FROM nginx:alpine3.20
FROM nginx@sha256:2140dad235c130ac861018a4e13a6bc8aea3a35f3a40e20c1b060d51a7efd250
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY ./angular/dist/angular-starter/browser /usr/share/nginx/html
USER nginx
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 8080
