FROM debian:testing

RUN apt-get update && apt-get install sudo

RUN apt-get -y install libxml-writer-perl libguestfs-perl uuid-runtime \
        ca-certificates debsums dosfstools \
        fai-server fai-setup-storage make python3 python3-libcloud python3-marshmallow \
        python3-pytest python3-yaml qemu-utils udev \
        libguestfs-perl libxml-writer-perl uuid-runtime

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "bash", "/entrypoint.sh" ]