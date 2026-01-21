# 1. Force the platform to AMD64 (Required for Mac M1/M2/M3 compatibility)
FROM --platform=linux/amd64 ubuntu:22.04

# 2. Prevent interactive pop-ups during install
ENV DEBIAN_FRONTEND=noninteractive

# 3. Install necessary tools and certificates
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# 4. Install LaserSell keys and repository
RUN curl -fsSL https://lasersell.github.io/apt/KEY.gpg | \
    gpg --dearmor -o /usr/share/keyrings/lasersell-archive-keyring.gpg

RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/lasersell-archive-keyring.gpg] https://lasersell.github.io/apt stable main" | \
    tee /etc/apt/sources.list.d/lasersell.list

# 5. Install the proprietary software
RUN apt-get update && apt-get install -y \
    lasersell \
    && rm -rf /var/lib/apt/lists/*

# 6. CRITICAL: Configure the internal paths
# We set HOME to /app so the application looks for config in /app/.lasersell
ENV HOME=/app

# We create the directory and set it as the working directory
RUN mkdir -p /app/.lasersell
WORKDIR /app/.lasersell

# 7. Start the app
CMD ["lasersell"]
