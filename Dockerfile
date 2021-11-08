FROM ubuntu:focal

RUN apt-get update -yq \
    && DEBIAN_FRONTEND=noninteractive \
    && apt install software-properties-common -yq \
    && add-apt-repository multiverse -y \
    && dpkg --add-architecture i386 \
    && apt-get update -yq \
    && apt-get install -yq tzdata libcurl4 libssl-dev gnupg ca-certificates curl unzip \
    && apt-get install -yq lib32stdc++6 mono-runtime libc6:i386 \
    && apt-get install -yq lib32z1 tar curl coreutils libgdiplus  \
    && apt-get install -yq libgl1-mesa-glx:i386 libxcursor1:i386 libxrandr2:i386 libc6-dev-i386 lib32gcc1 screen \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN adduser \
	--home /home/steam \
	--disabled-password \
	--shell /bin/bash \
	--gecos "user for running steam" \
	--quiet \
	steam

WORKDIR /home/steam
RUN curl -s https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz | tar -vxz
RUN ./steamcmd.sh +quit
RUN mkdir -p /home/steam/.steam/sdk64/ && cp -f linux64/steamclient.so /home/steam/.steam/sdk64/steamclient.so
