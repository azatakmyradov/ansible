FROM archlinux:latest

ARG TAGS

# Update package database and install all packages in one layer
RUN pacman -Syu --noconfirm neovim ansible curl git wget base-devel

WORKDIR /usr/local/bin

COPY . .
