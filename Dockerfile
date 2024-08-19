# Development Stage
FROM nixos/nix AS dev

WORKDIR /usr/src/mathgpt

VOLUME /usr/src/mathgpt

COPY default.nix /usr/src/mathgpt/default.nix

CMD ["nix-shell"]

# Production Stage
FROM nixos/nix AS prod

WORKDIR /usr/src/mathgpt

COPY . /usr/src/mathgpt/

# Pre-build the environment
RUN nix-shell default.nix --run "echo Production Environment Ready"

# Run application
CMD ["production-start-command"]
