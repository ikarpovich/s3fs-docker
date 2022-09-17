FROM alpine
ENV S3_BUCKET ""
ENV MNT_POINT "/data"
ENV S3_URL "https://s3-eu-west-1.amazonaws.com"
ENV OPTION ""
RUN /bin/sh -c "apk --update --nocache add --repository http://dl-cdn.alpinelinux.org/alpine/edge/main \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing s3fs-fuse dumb-init && \
    mkdir -p \"$MNT_POINT\""

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD s3fs $S3_BUCKET $MNT_POINT -f -o passwd_file=/root/passwd-s3fs -o url=$S3_URL -o use_path_request_style $OPTION