FROM archlinux:latest
RUN pacman -Syyu base-devel --noconfirm
RUN pacman -Syyu arm-none-eabi-gcc --noconfirm
RUN pacman -Syyu arm-none-eabi-newlib --noconfirm
RUN pacman -Syyu git --noconfirm
RUN pacman -Syyu python-pip --noconfirm
RUN pacman -Syyu python-crcmod --noconfirm
# Ownership in the docker is (probably) different from host, causing potential security issues
# This tells all dirs are safe for all users
RUN git config --system --add safe.directory '*'
WORKDIR /app
