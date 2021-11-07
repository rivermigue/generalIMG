FROM ubuntu:focal

RUN apt-get update \
    && add-apt-repository multiverse \
    && dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y tzdata libcurl4 libssl-dev gnupg ca-certificates curl unzip \
    && apt-get install lib32stdc++6 mono-runtime mono-reference-assemblies-2.0 libc6:i386 \
    && apt-get install ia32-libs lib32ncurses5 lib32z1 \
    && apt-get install libgl1-mesa-glx:i386 libxcursor1:i386 libxrandr2:i386 libc6-dev-i386 libgcc-4.8-dev:i386 screen \
    && apt install lib32gcc1 steamcmd \
