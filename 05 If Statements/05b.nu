#!/usr/bin/env nu
# https://youtu.be/YrE1Qg-Aw0Q?si=jY-o8aDdCpzR7BXj

if ("./myfile" | path exists) {
  echo "The file exists."
} else {
  echo "The file does not exist."
}
