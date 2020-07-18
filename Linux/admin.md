UUID=3224fdc9-53ff-4610-974f-c0ad3c81d717 /               ext4    errors=remount-ro 0       1
UUID=FD20-359A  /boot/efi       vfat    umask=0077      0       1


https://docs.docker.com/engine/install/binaries/

https://download.docker.com/linux/static/stable/aarch64/docker-18.06.0-ce.tgz

tar xzvf docker-18.06.0-ce.tgz

cp docker/* /usr/bin/

dockerd &

docker run hello-world
