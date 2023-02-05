FROM nginx:latest
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./profile.jpeg //usr/share/nginx/html/
EXPOSE 80