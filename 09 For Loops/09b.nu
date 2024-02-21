#!/usr/bin/env nu
# https://youtu.be/HvzI7c3eK5k?list=PLT98CRl2KxKGj-VKtApD8-zCqSaN2mD4w

for $file in (glob logfiles/*.log) {
  ^tar -czvf $"($file).tar.gz" $file
}
