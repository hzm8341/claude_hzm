#!/bin/bash
# Claude_HZM - MiniMax-enabled Claude Code CLI

# Set default base URL if not provided
export MINIMAX_BASE_URL="${MINIMAX_BASE_URL:-https://api.minimaxi.com/anthropic}"

# Check if API key is set
if [ -z "$MINIMAX_API_KEY" ]; then
    echo "Error: MINIMAX_API_KEY is not set"
    echo "Usage:"
    echo "  MINIMAX_API_KEY='your-key' $0 'Hello'"
    exit 1
fi

# Get the directory where the script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Run claw
"$SCRIPT_DIR/target/release/claw" "$@"
