#!/usr/bin/env bash
# KnowledgeSynthesizer Install Script (Unix/Mac)
# Usage: bash install.sh

set -e

KS_DIR="$(cd "$(dirname "$0")" && pwd)"
OPENCODE_DIR="$HOME/.config/opencode"
AGENT_TARGET="$OPENCODE_DIR/agent/knowledge-synthesizer"
COMMAND_TARGET="$OPENCODE_DIR/command"
CONTEXT_TARGET="$OPENCODE_DIR/context/knowledge"

echo ""
echo "============================================================"
echo " KnowledgeSynthesizer — Installation"
echo "============================================================"
echo ""

# Step 1: Create directories
echo "[1/5] Creating directories..."
mkdir -p "$AGENT_TARGET" "$CONTEXT_TARGET/concepts" "$CONTEXT_TARGET/guides" "$CONTEXT_TARGET/lookup" "$CONTEXT_TARGET/examples" "$CONTEXT_TARGET/errors"

# Step 2: Install agent file
echo "[2/5] Installing agent..."
cp "$KS_DIR/agent/knowledge-synthesizer.md" "$AGENT_TARGET/" && echo "  Agent installed" || echo "  [WARNING] Agent copy failed"

# Step 2.5: Install subagent file
echo "[2.5/5] Installing subagent..."
mkdir -p "$OPENCODE_DIR/agent/subagents/knowledge"
cp "$KS_DIR/agent/subagents/knowledge-synthesizer.md" "$OPENCODE_DIR/agent/subagents/knowledge/" && echo "  Subagent installed"

# Step 3: Install command file
echo "[3/5] Installing command..."
cp "$KS_DIR/command/knowledge.md" "$COMMAND_TARGET/" && echo "  Command installed" || echo "  [WARNING] Command copy failed"

# Step 4: Install context files
echo "[4/5] Installing context..."
cp -r "$KS_DIR/context/"* "$CONTEXT_TARGET/" && echo "  Context files installed"

# Step 5: Verify
echo "[5/5] Verifying..."
if [ -f "$AGENT_TARGET/knowledge-synthesizer.md" ] && [ -f "$COMMAND_TARGET/knowledge.md" ] && [ -f "$CONTEXT_TARGET/navigation.md" ]; then
    echo ""
    echo "============================================================"
    echo "  ✅ KnowledgeSynthesizer installed successfully!"
    echo "============================================================"
    echo ""
    echo "  Installed components:"
    echo "    Agent:   $AGENT_TARGET/knowledge-synthesizer.md"
    echo "    Command: $COMMAND_TARGET/knowledge.md"
    echo "    Context: $CONTEXT_TARGET/"
    echo ""
    echo "  Usage: /knowledge [topic] @[depth] @[perspective]"
    echo ""
else
    echo "  ❌ Installation incomplete. Missing files."
    exit 1
fi
echo ""
echo "Done."
