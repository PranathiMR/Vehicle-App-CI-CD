cat > Dockerfile << 'EOF'
FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    libssl-dev \
    ca-certificates \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy binaries from build step (CI will build first)
COPY build/bin/ /app/

# Default entrypoint: seat adjuster example app
ENTRYPOINT ["/app/example-seatadjusterapp"]
EOF
