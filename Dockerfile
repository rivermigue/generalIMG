FROM ubuntu:focal

RUN apt-get update -y\
    && apt install software-properties-common -y \
    && add-apt-repository multiverse -y \
    && dpkg --add-architecture i386 \
    && apt-get update -y \
    && apt-get install -y tzdata libcurl4 libssl-dev gnupg ca-certificates curl unzip \
    && apt-get install -y lib32stdc++6 mono-runtime mono-reference-assemblies-2.0 libc6:i386 \
    && apt-get install -y ia32-libs lib32ncurses5 lib32z1 \
    && apt-get install  -ylibgl1-mesa-glx:i386 libxcursor1:i386 libxrandr2:i386 libc6-dev-i386 libgcc-4.8-dev:i386 screen \
    && apt install -y lib32gcc1 steamcmd \
