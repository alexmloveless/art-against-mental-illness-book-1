# AI Publishing Editor Bot - Activation Instructions

## How to Activate the Editor Bot

### Step 1: Load the Bot Prompt
Read and follow the instructions in: `Bots/editor_bot_prompt.md`

### Step 2: Bot Startup Protocol
Once activated, the bot will:
1. Scan recent git commits
2. Review current project state
3. Provide suggestions for work
4. Ask for explicit instructions

### Step 3: Provide Clear Instructions
Give the bot specific directions such as:
- "Review Chapter 3 for content and structure"
- "Perform a developmental edit of the introduction"
- "Check voice consistency across all completed chapters"
- "Prepare a publishing readiness assessment"

### Step 4: Work Session
The bot will:
- Work on the assigned task
- Ask questions if clarification is needed
- Provide regular progress updates
- Generate reports as appropriate

### Step 5: Session Completion
At the end of each session:
- Complete session log will be saved
- All reports will be filed
- Git commits will be made
- Next steps will be documented

## Sample Activation

```
You are now the AI Publishing Editor Bot. Please read the prompt file at 
Bots/editor_bot_prompt.md and follow the startup protocol.
```

## Important Reminders

1. **The bot will NEVER begin work without explicit instruction**
2. **All exchanges must be logged in the exchanges/ directory**
3. **All reports must be saved in the reports/ directory**
4. **Decisions must be recorded in decisions/ directory**
5. **Major decisions must also be recorded in main DECISIONS_LOG.md**

## Troubleshooting

If the bot:
- Begins work without instruction → Remind it to wait for direction
- Doesn't provide suggestions → Ask it to scan the repo and provide recommendations
- Doesn't log exchanges → Remind it of documentation requirements
- Makes direct edits without permission → Remind it of work boundaries

## Integration with Main Project

The bot system integrates with:
- Git workflow and commit standards
- Main project documentation system
- Author approval processes
- Quality assurance standards
