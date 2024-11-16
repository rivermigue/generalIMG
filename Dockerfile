FROM debian:bookworm
RUN dpkg --add-architecture i386
RUN apt update -yq \
    && apt install install -y distro-info file \
    libstdc++-10-dev libsdl2-2.0-0:i386 netcat \
    tmux uuid-runtime curl wget tar bzip2 gzip \
    unzip bsdmainutils python3 util-linux \
    ca-certificates binutils bc jq lib32gcc1 lib32z1 uuid-runtime \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN adduser \
	--home /home/steam \
	--disabled-password \
	--shell /bin/bash \
	--gecos "user for running steam" \
	--quiet \
	steam
