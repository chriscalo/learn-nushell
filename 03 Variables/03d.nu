#!/usr/bin/env nu
# https://youtu.be/uQE_4Q-HZZw?si=YO97ccousP8Zwp4r

let name = "Chris Calo"
let now = (date now)

echo $"Hello, ($name)."
echo $"The system time and date is:"
echo $now
echo $"Your username is: ($env.USER)"
