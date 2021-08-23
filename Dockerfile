FROM debian:11.0-slim

LABEL org.opencontainers.image.description="LaTeX container for GitHub Action latexmk"
LABEL org.opencontainers.image.source=https://github.com/hspaans/latexmk-action

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

# Configure apt and install packages
# hadolint ignore=DL3008
RUN apt-get update \
    && apt-get -y install --no-install-recommends apt-utils dialog 2>&1 \
    # Install texlive-full
    && apt-get -y install --no-install-recommends texlive-full \
    # Clean up
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog

# Configure entrypoint for GitHub Action
COPY entrypoint /usr/local/bin/entrypoint
RUN chmod 555 /usr/local/bin/entrypoint

ENTRYPOINT ["/usr/local/bin/entrypoint"]
