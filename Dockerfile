# Development Stage
FROM nixos/nix AS dev

WORKDIR /usr/src/mathgpt

COPY default.nix /usr/src/mathgpt/default.nix

RUN mkdir -p /root/.config/nvim 

RUN git clone https://github.com/LazyVim/starter /root/.config/nvim

RUN rm -rf /root/.config/nvim/.git

 CMD ["nix-shell"]

# Production Stage
FROM nixos/nix AS prod

WORKDIR /usr/src/mathgpt

COPY . /usr/src/mathgpt/

# Pre-build the environment
RUN nix-shell default.nix --run "echo Production Environment Ready"

# Run application
CMD ["production-start-command"]
