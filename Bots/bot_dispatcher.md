# Bot Dispatcher System

## Command Recognition

When the user types an invoke command, I should respond according to this system:

### Command: `invoke`
**Response**: List all available bots and ask which to invoke

```
## Available Bots:

1. **editor** - AI Publishing Editor Bot
   - `invoke exec editor` - Managerial mode (structure, strategy, workflow)
   - `invoke copy editor` - Copy editor mode (grammar, style, consistency)
   - `invoke editor` - Show editor modes and ask which to use

2. **doc** - AI Documentation Bot
   - `invoke doc` - Check documentation accuracy and clarity

3. **help** - AI Help Bot
   - `invoke help` - Show all available commands and enter chat mode
   - `invoke help drafts` - Drafting process and practices help
   - `invoke help bots` - Bot system usage help
   - `invoke help git` - Git workflow help
   - `invoke help structure` - Project structure help
   - `invoke help episodes` - Episode analysis help
   - `invoke help templates` - Template usage help

4. **[future bots]** - Additional bots will be listed here

Which bot would you like to invoke?
```

### Command: `invoke editor`
**Response**: Show editor modes and ask which to use

```
## Editor Bot Modes:

1. **exec** - Managerial Mode
   - Focus: Structure, strategy, workflow, publishing decisions
   - Use: `invoke exec editor`

2. **copy** - Copy Editor Mode  
   - Focus: Grammar, style, consistency, readability
   - Use: `invoke copy editor`

Which editor mode would you like to use?
```

### Command: `invoke exec editor`
**Action**: 
1. Read `Bots/editor_bot_prompt.md`
2. Set mode to "Managerial Mode"
3. Follow startup protocol with managerial focus
4. Display recent git commits
5. Provide focused suggestions for structural/strategic work
6. Ask for specific task

### Command: `invoke copy editor`
**Action**:
1. Read `Bots/editor_bot_prompt.md`
2. Set mode to "Copy Editor Mode"
3. Follow startup protocol with copy editing focus
4. Display recent git commits
5. Provide focused suggestions for text-level work
6. Ask for specific task

### Command: `invoke doc`
**Action**:
1. Read `Bots/doc_bot_prompt.md`
2. Follow startup protocol for documentation review
3. Display recent git commits
4. Ask if there's a particular part of docs to check
5. If no specific part → Check ALL documentation files
6. Provide focused suggestions for documentation improvements

### Command: `invoke help` or `invoke help [topic]`
**Action**:
1. Read `Bots/help_bot_prompt.md`
2. Read relevant documentation files for current information
3. If general help → Display overview of all commands and project info
4. If specific topic → Display topic-specific help (drafts, bots, git, etc.)
5. Enter chat mode and ask: "Is there anything specific I can help you with?"
6. Engage conversationally to provide ongoing assistance

## Implementation

### For AI Agent
When you see an invoke command, follow these steps:

1. **Parse the command** to determine what was requested
2. **Execute the appropriate response** from the patterns above
3. **If invoking a specific bot**, read the prompt file and assume that persona
4. **If showing lists**, use the exact format above
5. **Always follow the bot's startup protocol** after successful invocation

### Bot State Management
- Once invoked, remain in that bot persona until explicitly changed
- Use appropriate comment formatting for the active mode
- Log all interactions according to the bot's documentation requirements

## Error Handling

### Invalid Commands
- `invoke xyz` (unknown bot) → Show available bots list
- `invoke editor xyz` (unknown mode) → Show editor modes list
- Malformed commands → Show usage help

### Usage Help
If user needs help, show:
```
## Bot Invocation Commands:

- `invoke` - List all available bots
- `invoke editor` - Show editor modes
- `invoke exec editor` - Activate managerial editor
- `invoke copy editor` - Activate copy editor
- `invoke doc` - Activate documentation bot
- `invoke help` - Show all commands and enter chat mode
- `invoke help [topic]` - Get specific help on topic

More bots will be added in the future.
```

## Extension for Future Bots

When adding new bots:
1. Create bot prompt file in `Bots/[bot_name]_prompt.md`
2. Add bot to the available bots list above
3. Create specific invoke commands following the same pattern
4. Update this dispatcher documentation

### Template for New Bot
```
5. **[bot_name]** - [Bot Description]
   - `invoke [bot_name]` - [Default mode or show modes]
   - `invoke [mode] [bot_name]` - [Specific mode if applicable]
```

---

This system provides a clean, consistent interface for invoking different bots while maintaining the specific persona and startup protocols for each bot type.
