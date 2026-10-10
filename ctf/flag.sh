#!/bin/sh
# Places the player's flag (CTF_FLAG_MAIN, given by the launcher) in the module the challenge
# imports it from (/chroot/home/user/flag.py); without one (CI, a run by hand) the development flag.
dev='CTF{dev-google-ctf-2024-hwsim}'
v="${CTF_FLAG_MAIN:-$dev}"
printf 'flag = "%s"\n' "$v" > /chroot/home/user/flag.py
chmod 444 /chroot/home/user/flag.py
