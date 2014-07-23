FROM ubuntu:14.04
MAINTAINER spro

# Install dependencies
RUN apt-get -qq update
RUN apt-get -qqy install git nginx

# Copy nginx config
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Run the server
EXPOSE 80
CMD ["nginx"]
