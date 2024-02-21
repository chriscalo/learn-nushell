#!/usr/bin/env nu
# https://youtu.be/HvzI7c3eK5k?list=PLT98CRl2KxKGj-VKtApD8-zCqSaN2mD4w

for $n in [1 2 3 4 5 6 7 8 9 10] {
  echo $n
  sleep 0.5sec
}

echo "This is outside of the for loop."
