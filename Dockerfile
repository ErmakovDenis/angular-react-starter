FROM nginx@sha256:2140dad235c130ac861018a4e13a6bc8aea3a35f3a40e20c1b060d51a7efd250
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY angular/dist/angular /usr/share/nginx/html
EXPOSE 8080