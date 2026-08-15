FROM ghcr.io/containerpak/gtk3:main

LABEL org.opencontainers.image.source="https://github.com/Containerpak/tor-browser-launcher"

RUN apt-get update && \
    apt-get install -y --no-install-recommends torbrowser-launcher && \
    cpak-clean-junk

COPY org.torproject.torbrowser-launcher.desktop /usr/share/applications/org.torproject.torbrowser-launcher.desktop
