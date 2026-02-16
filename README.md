# homebrew-tools

Homebrew tap for Pavan's CLI utilities.

## Available Formulas

| Formula | Description | Install |
|---------|-------------|------|
| **inbox-cli** | An agentic Downloads folder organizer for macOS | `brew install pavanpaik/tools/inbox-cli` |

## Quick Start

```bash
# Add the tap
brew tap pavanpaik/tools

# Install inbox-cli
brew install inbox-cli
```

## Usage

### inbox-cli

Tame your ~/Downloads folder with intelligent file organization.

```bash
# Preview what would be organized
inbox tidy --dry-run

# Organize your Downloads
inbox tidy

# Undo the last operation
inbox undo

# Watch for new downloads in real-time
inbox watch

# See move history
inbox history

# Explain why a file was moved
inbox why "invoice.pdf"
```

## Add a new formula

1. Create `Formula/<tool>.rb`.
2. Update `desc`, `homepage`, `url`, `sha256`, `license`, and install logic.
3. Open a PR; CI will run formula lint/audit checks.

## License

MIT
