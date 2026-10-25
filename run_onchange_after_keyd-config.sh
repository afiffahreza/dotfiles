#!/bin/bash

# This script runs automatically on 'chezmoi apply' whenever its contents change.

sudo tee /etc/keyd/default.conf > /dev/null << 'EOF'
[ids]
*

# This defines what happens when the Super (Meta) key is held down
[meta]
a = C-a
f = C-f
r = C-r
s = C-s
t = C-t
w = C-w
l = C-l
z = C-z
space=C-space
left=C-left
right=C-right

# The Universal Trick for Copy/Paste/Cut
c = C-insert
v = S-insert
x = S-delete

# Super + Shift
[meta+shift]
c = C-S-c
EOF

# Reload keyd to apply changes immediately
sudo keyd reload

