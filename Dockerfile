# Use Python 3.7 as the base image (slim version based on Debian Buster)
FROM python:3.7-slim-buster

# Update and install Zsh, Git, and curl
RUN apt-get update && apt-get install -y zsh git curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Verify Zsh installation
RUN zsh --version

# Install Oh My Zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
    && chsh -s $(which zsh)

# Set Zsh as the default shell
CMD ["zsh"]
