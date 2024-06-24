FROM ubuntu:22.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
	build-essential \
	git \
	libasound2-dev \
	libx11-dev \
	libxrandr-dev \
	libxi-dev \
	libgl1-mesa-dev \
	libglu1-mesa-dev \
	libxcursor-dev \
	libxinerama-dev \
	libwayland-dev \
	libxkbcommon-dev \
	ca-certificates \
	vim

RUN git clone --depth 1 https://github.com/raysan5/raylib.git raylib \
	&& cd raylib/src/ \
	&& make PLATFORM=PLATFORM_DESKTOP \
	&& make install

WORKDIR /app

