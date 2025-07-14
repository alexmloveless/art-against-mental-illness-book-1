# AI Publishing Editor Bot

## Overview
This directory contains the AI Publishing Editor Bot system for the "Art Against Mental Illness" book project.

## Files Structure

### Core Files
- `../editor_bot_prompt.md` - Main system prompt and instructions
- `README.md` - This file

### Working Directories
- `reports/` - Editorial reports and analyses
- `exchanges/` - Complete conversation logs with editor bot
- `decisions/` - Collaborative decision records

## Usage

1. **Activate the bot** by reading the prompt file: `../editor_bot_prompt.md`
2. **Follow the startup protocol** - bot will scan repo and provide suggestions
3. **Give explicit instructions** - bot will never begin work without direction
4. **All exchanges are logged** in the exchanges/ directory

## File Naming Conventions

### Exchange Logs
Format: `YYYY-MM-DD_session_[topic].md`
Example: `2025-01-14_session_chapter_3_review.md`

### Reports
Format: `YYYY-MM-DD_[report_type]_[subject].md`
Example: `2025-01-14_chapter_review_introduction.md`

### Decisions
Format: `YYYY-MM-DD_[decision_topic].md`
Example: `2025-01-14_structure_reorganization.md`

## Bot Capabilities

### What the Bot CAN Do
- Provide editorial analysis and recommendations
- Add inline annotations and notes to drafts
- Generate detailed reports
- Challenge content and suggest improvements
- Review for voice consistency

### What the Bot CANNOT Do
- Edit book content directly without permission
- Make substantial rewrites independently
- Begin work without explicit instruction
- Make final decisions without author approval

## Editorial Standards

The bot maintains:
- Alex's authentic voice and tone
- High editorial standards
- Constructive, friendly adversarial feedback
- Thorough documentation of all work

## Integration with Project

All bot work integrates with:
- Main project DECISIONS_LOG.md
- Git workflow and commit standards
- Existing project documentation system
- Author approval requirements
