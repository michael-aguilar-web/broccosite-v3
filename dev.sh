#!/usr/bin/env bash
set -e

PORT=${PORT:-8002}                  # change to 8001 in the other project
NAME=${NAME:-emanote-michaelsite}

need_docker() {
  if docker info >/dev/null 2>&1; then
    return 0
  else
    return 1
  fi
}

start_docker_desktop() {
  echo "Docker daemon not reachable. Trying to start Docker Desktop..."
  # Kick off Docker Desktop from WSL (Windows path). Adjust if Docker is installed elsewhere.
  powershell.exe -NoProfile -Command \
    "Start-Process -FilePath 'C:\\Program Files\\Docker\\Docker\\Docker Desktop.exe'" >/dev/null 2>&1 || true

  # Wait up to ~60s for the daemon
  for i in {1..60}; do
    if docker info >/dev/null 2>&1; then
      echo "Docker is up."
      return 0
    fi
    sleep 1
  done

  echo "Still can't reach Docker. Please open Docker Desktop manually and rerun."
  exit 1
}

if ! need_docker; then
  start_docker_desktop
fi

# Stop any previous dev container
docker rm -f "$NAME" >/dev/null 2>&1 || true

# Run Emanote
docker run --rm --name "$NAME" \
  -p "$PORT:$PORT" \
  --tmpfs /tmp \
  -e LANG=C.UTF-8 -e LC_ALL=C.UTF-8 \
  -v "$PWD:/data" \
  ghcr.io/srid/emanote:latest \
  -L /data run --port="$PORT" --host=0.0.0.0
