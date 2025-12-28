#!/bin/bash

# Cloudflare Pages Build Script

if [ "$CF_PAGES_BRANCH" == "main" ]; then
  echo "Building for production (main branch)..."
  hugo --baseURL "https://samuel-skean.net/"
elif [ -n "$CF_PAGES_URL" ]; then
  echo "Building for preview ($CF_PAGES_BRANCH)..."
  hugo --baseURL "$CF_PAGES_URL"
else
  echo "Building with default settings..."
  hugo
fi
