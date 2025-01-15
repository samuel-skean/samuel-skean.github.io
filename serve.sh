#!/bin/env bash
if [ "$#" -ne 1 ]; then
  echo "Usage: ./serve.sh <IP_ADDRESS_TO_SERVE_FROM>"
  exit 1
fi
hugo serve --bind $1 --baseURL $1
