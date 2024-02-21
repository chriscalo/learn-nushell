#!/usr/bin/env nu
# https://youtu.be/Bs8mUdab4lE?si=fwNUgNSGwSRWq2j3

if (which pacman | not-empty) {
  suco pacman -Syu
  exit 0
}

if (which apt | not-empty) {
  sudo apt update
  sudo apt dist-upgrade
  exit 0
}

# none of the update commands were found
exit 1

def not-empty [] {
  not ($in | is-empty)
}
