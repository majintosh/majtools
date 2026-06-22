#!/bin/sh


TARG="$1"
IMAGE="/usr/obj/usr/src/amd64.amd64/sys/GENERIC/kernel.full"

nm "$IMAGE" | grep "$TARG" | while read HEX TYPE NAME; do

	printf "%-60s" "$NAME:"
	addr2line --obj="$IMAGE" "$HEX"
done
