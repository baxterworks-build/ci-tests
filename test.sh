#!/usr/bin/env bash
ping -c1 google.com
ping -6 -c1 google.com || echo "No IPv6?"

ip addr
