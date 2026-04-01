# Claude_HZM

A Claude Code CLI fork with **MiniMax** support, based on the open-source [claw-code](https://github.com/instructkr/claw-code) project.

## Features

- **MiniMax API Support** - Uses MiniMax-M2.7 model via OpenAI-compatible API
- **Rust Implementation** - Fast, memory-safe runtime
- **Tool System** - File reading, editing, bash commands, and more
- **Modular Architecture** - Based on proven claw-code design

## Prerequisites

- Rust 1.70+ ([install](https://rustup.rs))
- MiniMax API Key

## Configuration

Set your MiniMax API credentials via environment variables:

```bash
export MINIMAX_API_KEY="your-api-key"
export MINIMAX_BASE_URL="https://api.minimaxi.com/anthropic"
export MINIMAX_MODEL="MiniMax-M2.7"
```

Or use Anthropic-compatible variables:

```bash
export ANTHROPIC_API_KEY="your-api-key"
export ANTHROPIC_BASE_URL="https://api.minimaxi.com/anthropic"
```

## Building

```bash
cargo build --release
```

The binary will be at `target/release/rusty-claude-cli`.

## Project Structure

```
crates/
├── api/              # MiniMax API client
├── commands/         # CLI commands
├── compat-harness/   # Compatibility layer
├── runtime/          # Core runtime
├── rusty-claude-cli/ # CLI entry point
└── tools/           # Tool implementations
```

## Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `MINIMAX_API_KEY` | MiniMax API key | Required |
| `MINIMAX_BASE_URL` | API endpoint | `https://api.minimaxi.com/anthropic` |
| `MINIMAX_MODEL` | Model name | `MiniMax-M2.7` |
| `ANTHROPIC_API_KEY` | Fallback API key | - |
| `ANTHROPIC_BASE_URL` | Fallback endpoint | - |

## License

MIT License - same as [claw-code](https://github.com/instructkr/claw-code)

## Credits

- Based on [claw-code](https://github.com/instructkr/claw-code) by instructkr
- MiniMax integration added for custom deployment
