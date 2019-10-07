FROM gogs/gogs
RUN apk update
VOLUME /var/gogs /data
ENV USER=gogs
EXPOSE 22 3000
ENTRYPOINT ./gogs web

#TO RUN docker run -it --rm --name=gogs -p 10022:22 -p 3000:3000