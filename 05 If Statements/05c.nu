#!/usr/bin/env nu
# https://youtu.be/YrE1Qg-Aw0Q?si=jY-o8aDdCpzR7BXj

let cmd = "htop"

if (which ($cmd) | is-empty) {
  echo $"($cmd) is NOT available. Installing…"
  brew install $cmd
} else {
  echo $"($cmd) is available. Running…"
}

# Found here: https://github.com/nushell/nushell/discussions/5413
nu -c $cmd
