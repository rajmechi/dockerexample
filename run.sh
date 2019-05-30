#!/bin/bash
while true; do sleep 1 ; echo "hello background"; done &

while true; do sleep 1 ; echo "hello foreground"; done
