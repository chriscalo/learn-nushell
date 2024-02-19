#!/usr/bin/env nu
# https://youtu.be/6N4RNPRx0xs?si=_oNZfQ1Ra05JPAi5

let package = "htop"
let output_log = "package_install_results.log"

# NOTE: nushell appears to not correctly set `$env.LAST_EXIT_CODE`, so we use
# a try/catch block instead.
try {
  # Write all output to a log file
  brew install ($package) out+err>> ($output_log)
  echo $"✅ Package ($package) is installed"
  echo (^which ($package))
} catch {
  echo $"❌ Failed to install package ($package)"
}
