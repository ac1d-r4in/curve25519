#!/bin/bash

gcc curve25519.cpp -o curve25519 -I/opt/homebrew/include -L/opt/homebrew/lib -lsodium
./curve25519 