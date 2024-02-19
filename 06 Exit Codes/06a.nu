#!/usr/bin/env nu
# https://youtu.be/6N4RNPRx0xs?si=_oNZfQ1Ra05JPAi5

let package = "htop"
const SUCCESS = 0

# NOTE: this method suppresses all output from the external command, so we need
# to manually capture and then write it. Unfortunately, doing it this way loses
# all coloring.
let result = do { brew install ($package) } | complete
if ($result.exit_code == $SUCCESS) {
  echo $"✅ Package ($package) is installed"
  echo (^which ($package))
} else {
  echo $"❌ Failed to install package ($package)"
  echo $result.stderr
}
