# Bot Invocation System

## Quick Start

### Available Commands:
- `invoke` - List all available bots
- `invoke editor` - Show editor modes  
- `invoke exec editor` - Activate managerial editor
- `invoke copy editor` - Activate copy editor
- `invoke doc` - Activate documentation bot
- `invoke help` - Show all commands and enter chat mode
- `invoke help [topic]` - Get specific help on topic

## How It Works

When you type an invoke command, I will:
1. **Parse your command** to determine what you want
2. **Read the appropriate bot prompt** and assume that persona
3. **Follow the bot's startup protocol** (scan repo, show git commits, etc.)
4. **Ask for specific tasks** within that bot's capabilities

## Current Bots

### 1. Editor Bot
**Purpose**: AI Publishing Editor for the book project

**Modes**:
- **Managerial** (`invoke exec editor`): Structure, strategy, workflow, publishing decisions
- **Copy Editor** (`invoke copy editor`): Grammar, style, consistency, readability

**Features**:
- Scans recent git commits on startup
- Provides focused suggestions based on repo state
- Uses proper inline comment formatting
- Maintains Alex's voice while ensuring quality
- Takes friendly adversarial stance

### 2. Documentation Bot
**Purpose**: AI Documentation Specialist for keeping project docs current and clear

**Command**: `invoke doc`

**Features**:
- Checks documentation accuracy and currency
- Verifies docs match current project state
- Assesses clarity and usability
- Identifies gaps and inconsistencies
- Focuses only on documentation files (not content/drafts)
- Asks for specific areas or checks all docs

### 3. Help Bot
**Purpose**: AI Help Assistant for human users navigating the project

**Commands**: 
- `invoke help` - General help and chat mode
- `invoke help [topic]` - Specific help (drafts, bots, git, structure, episodes, templates)

**Features**:
- Pulls real-time information from documentation files
- Provides conversational, human-friendly assistance
- Explains commands, processes, and project structure
- Enters chat mode for ongoing support
- Always assumes interaction with humans
- Tracks common questions for documentation improvement

## Usage Examples

```
You: invoke
Me: [Shows list of available bots]

You: invoke editor  
Me: [Shows editor modes and asks which to use]

You: invoke exec editor
Me: [Becomes managerial editor, shows git commits, provides suggestions]

You: invoke copy editor
Me: [Becomes copy editor, shows git commits, provides text-level suggestions]

You: invoke doc
Me: [Becomes documentation bot, shows git commits, asks what to check]

You: invoke help
Me: [Shows all commands and project info, then asks: "Is there anything specific I can help you with?"]

You: invoke help drafts
Me: [Shows drafting process help, then enters chat mode for questions]
```

## Adding New Bots

To add a new bot:
1. Create `Bots/[bot_name]_prompt.md` with bot instructions
2. Update `Bots/bot_dispatcher.md` with new bot entry
3. Add bot to the available bots list in this README

## Files Structure

```
Bots/
├── README.md                    # This file - usage instructions
├── bot_dispatcher.md            # Command parsing and routing logic
├── editor_bot_prompt.md         # Editor bot system prompt
├── doc_bot_prompt.md            # Documentation bot system prompt
├── help_bot_prompt.md           # Help bot system prompt
├── editor_bot/                  # Editor bot working directory
│   ├── README.md               # Editor-specific documentation
│   ├── activation_instructions.md
│   ├── comment_formatting_guide.md
│   ├── publishing_standards_reference.md
│   ├── templates/              # Report templates
│   ├── reports/                # Generated reports
│   ├── exchanges/              # Conversation logs
│   └── decisions/              # Decision records
├── doc_bot/                     # Documentation bot working directory
│   ├── reports/                # Generated reports
│   ├── exchanges/              # Conversation logs
│   └── decisions/              # Decision records
└── help_bot/                    # Help bot working directory
    ├── common_questions.md     # FAQ tracking
    └── exchanges/              # Conversation logs
```

## Bot Behavior

### All Bots Will:
- Wait for explicit instruction before beginning work
- Document all exchanges and decisions
- Maintain appropriate persona throughout session
- Follow project git workflow and standards

### Editor Bot Specifically:
- Use proper comment formatting: `**[AI EDITOR - MODE: Comment]**`
- Preserve Alex's authentic voice
- Take friendly adversarial stance (supportive but demanding)
- Never edit content directly without permission
- Log all work in appropriate directories

### Documentation Bot Specifically:
- Use proper comment formatting: `**[DOC BOT: Comment]**`
- Focus only on documentation files (not content/drafts)
- Check for accuracy, clarity, and currency
- Identify gaps and inconsistencies
- Ask for specific areas or check all docs if none specified

### Help Bot Specifically:
- Always interact with humans in a conversational, friendly manner
- Pull real-time information from documentation files
- Enter chat mode after displaying initial help content
- Ask "Is there anything specific I can help you with?"
- Track common questions for documentation improvement

---

**Note**: This system is designed to be extended. Future bots for research, formatting, marketing, etc. can be added using the same invoke pattern.
