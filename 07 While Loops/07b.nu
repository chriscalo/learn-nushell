#!/usr/bin/env nu
# https://youtu.be/R0tTsdQ_9Vw?si=SJEzESSoGI3NfcIq

while ("./testfile" | path exists) {
  echo $"As of (date now) the file still exists."
  sleep 2sec
}

echo $"As of (date now), the file no longer exists. Exiting."
