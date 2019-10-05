FROM archlinux/base

RUN pacman -Syu base-devel git --noconfirm

# Esto debería crear el usuario docker y añadirlo al grupo sudo
RUN useradd -m docker

# sudo para docker sin password
RUN echo "docker ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER docker

RUN mkdir /home/docker/build

WORKDIR /home/docker/build

RUN git clone https://aur.archlinux.org/yay.git

WORKDIR /home/docker/build/yay

RUN makepkg -si --noconfirm

# Instalando dependencias
RUN yay \
	--nodiffmenu \
	--nocleanmenu \
	--noconfirm \
	-S \
	nerd-fonts-inconsolata-go \
	texlive-most \
	inkscape

WORKDIR /home/docker/input

ENTRYPOINT [ "/bin/bash" ]
