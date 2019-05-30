#!/bin/bash
while true; do sleep 15 ; echo "hello background"; done &

while true; do sleep 12 ; echo "hello foreground"; done
