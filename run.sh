#!/bin/bash
# Claude_HZM - MiniMax-enabled Claude Code CLI

# TODO: Replace with your MiniMax API key
export MINIMAX_API_KEY="YOUR_MINIMAX_API_KEY_HERE"
export MINIMAX_BASE_URL="https://api.minimaxi.com/anthropic"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
"$SCRIPT_DIR/target/release/claw" "$@"
