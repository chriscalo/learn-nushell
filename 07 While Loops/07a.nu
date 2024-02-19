#!/usr/bin/env nu
# https://youtu.be/R0tTsdQ_9Vw?si=SJEzESSoGI3NfcIq

mut myvar = 1

while ($myvar <= 10) {
  echo $myvar
  $myvar += 1
  sleep 0.5sec
}
