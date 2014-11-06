FROM scratch
ADD rootfs.tar /

COPY opkg.conf /etc/
COPY opkg-install /usr/bin/
COPY functions.sh /lib/

RUN opkg-install libgcc
RUN opkg-cl install http://downloads.openwrt.org/snapshots/trunk/x86_64/packages/base/libc_0.9.33.2-1_x86_64.ipk

CMD ["/bin/sh"]
