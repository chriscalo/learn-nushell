#!/usr/bin/env nu
# https://youtu.be/6N4RNPRx0xs?si=_oNZfQ1Ra05JPAi5

let directory = "/kjslfe"

if ($directory | path exists) {
  echo $"The directory ($directory) exists."
  exit 0
} else {
  echo $"The directory ($directory) doesn't exist."
  exit 1
}
