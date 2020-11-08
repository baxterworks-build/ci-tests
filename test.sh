#!/usr/bin/env bash
dnf --assumeyes install binutils

mkdir /qemu
echo test1 > /qemu/fake.exe
echo test1 > /qemu/fake2.exe
echo test1 > /qemu/fake3.exe

MYVAR=$(strings /qemu/*.exe)
