# coder-claude

A [code-server](https://github.com/coder/code-server) Docker image with the [Claude Code](https://claude.ai/code) CLI pre-installed.

## What's inside

- `codercom/code-server:4.114.1` — browser-based VS Code
- `claude` CLI — latest version, installed via the official install script

## Usage

```bash
docker pull ghcr.io/rpoetrap/coder-claude:<tag>

docker run -d \
  -p 8080:8080 \
  -v "$HOME/.config:/home/coder/.config" \
  -v "$PWD:/home/coder/project" \
  ghcr.io/rpoetrap/coder-claude:<tag>
```

Then open `http://localhost:8080` in your browser.

## Publishing

Images are built and pushed to GitHub Container Registry automatically when a tag is pushed:

```bash
git tag v1.0.0
git push origin v1.0.0
```

Supported platforms: `linux/amd64`, `linux/arm64`.
