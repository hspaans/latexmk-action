FROM debian:10.8-slim

LABEL org.opencontainers.image.description="LaTeX container for GitHub Action latexmk"
LABEL org.opencontainers.image.source=https://github.com/hspaans/latexmk-action

LABEL repository="https://github.com/hspaans/latexmk-action"
LABEL homepage="https://github.com/hspaans/latexmk-action"
LABEL maintainer="Hans Spaans <hans@dailystuff.nl>"

RUN apt-get update && \
    apt-get -y install --no-install-recommends \
      texlive-full=2018.20190227-2 && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint /usr/local/bin/entrypoint
RUN chmod 555 /usr/local/bin/entrypoint

ENTRYPOINT ["/usr/local/bin/entrypoint"]
