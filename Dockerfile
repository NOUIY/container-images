FROM scratch
ADD amzn2-container-raw-2.0.20211201.0-arm64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-faddacaa94ce45cab3ebd75298e985ccc4100e074eae55e6692f4139b7719f13.tar.gz" \
 && echo "821fcdbe479764a7bf796e4f23a04df2ad960dc88f93f9dfb4492deb77ec6522  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
