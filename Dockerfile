FROM debian:10.5-slim

LABEL repository="https://github.com/hspaans/latex-action"
LABEL homepage="https://github.com/hspaans/latex-action"
LABEL maintainer="Hans Spaans <hans@dailystuff.nl>"

RUN apt-get update && \
    apt-get -y install texlive-full && \
    rm -rf /var/lib/apt/lists/*
