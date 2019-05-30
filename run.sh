#!/bin/bash
while true; do sleep 1 ; echo "hello rj background"; done &

while true; do sleep 1 ; echo "hello rj foreground"; done
