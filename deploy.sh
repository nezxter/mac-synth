#!/bin/bash

# Mac Synth deployment script

echo "🎹 Preparing to deploy Mac Synth to Vercel..."

# Check if Vercel CLI is installed
if ! command -v vercel &> /dev/null; then
    echo "❌ Vercel CLI not found. Installing..."
    npm install -g vercel
fi

# Ensure we're in the right directory
if [ ! -f "index.html" ] || [ ! -f "synth.js" ]; then
    echo "❌ Please run this script from the mac-synth directory."
    exit 1
fi

echo "✅ Found Mac Synth files"
echo "🚀 Deploying to Vercel..."

# Deploy to Vercel
vercel --prod

echo "🎉 Deployment initiated! Follow the instructions in the terminal."
echo "Once deployed, your Mac Synth will be available at the URL provided by Vercel." 