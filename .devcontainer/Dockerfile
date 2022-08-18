FROM mcr.microsoft.com/vscode/devcontainers/java:11-bullseye
# FROM debian:bullseye

ENV LANG C.UTF-8

# [Option] Install zsh
ARG INSTALL_ZSH="true"
# [Option] Upgrade OS packages to their latest versions
ARG UPGRADE_PACKAGES="true"

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

COPY files/* /tmp/files/

RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install unzip \
    && /bin/bash /tmp/files/common-debian.sh "${INSTALL_ZSH}" "${USERNAME}" "${USER_UID}" "${USER_GID}" "${UPGRADE_PACKAGES}" "true" "true" \
    && unzip /tmp/files/idris2-0.5.1.zip -d /opt

USER $USERNAME
ENV PATH="/opt/idris2-0.5.1/bin:$PATH" \
    IDRIS2_PREFIX="/opt/idris2-0.5.1/lib"
