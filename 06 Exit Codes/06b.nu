#!/usr/bin/env nu
# https://youtu.be/6N4RNPRx0xs?si=_oNZfQ1Ra05JPAi5

let package = "htop"

# NOTE: nushell appears to not correctly set `$env.LAST_EXIT_CODE`, so we use
# a try/catch block instead.
try {
  brew install ($package)
  echo $"✅ Package ($package) is installed"
  echo (^which ($package))
} catch {
  echo $"❌ Failed to install package ($package)"
}
