# Art Against Mental Illness Book - Agent Guide

This file contains everything an agent needs to start work on the book authoring project without further priming or context.

## Project Overview

You are working on a non-fiction book that distills core themes from the "Art Against Mental Illness" podcast. The book should retain the original voice, style, and tone while being readable as a standalone work that builds chapter by chapter.

**Working Title**: Art Against Mental Illness
**Author**: Alex
**Approach**: Iterative, git-based workflow with detailed audit trail

## Core Principles

1. **Preserve Alex's Voice**: Use original text verbatim where possible, maintaining words, tone, and style
2. **Chunked Work**: Work on one chunk at a time (chapter, sub-chapter, or paragraph)
3. **Git Everything**: Every change must be committed with detailed notes
4. **Multi-Agent Safe**: Any agent can pick up work at any point
5. **Audit Trail**: Log all decisions and interactions with Alex

## Technical Setup

### Environment Setup
```bash
# Ensure you're in the conda environment
conda activate [environment_name]

# If Whisper not available, install it
pip install openai-whisper
```

### Git Workflow
- Work on main branch for normal tasks
- Create feature branches for large changes affecting multiple files
- Always commit with descriptive messages
- Use `commit` tool with detailed notes

### Commit Message Format
```
[Task]: Brief description

Detailed explanation of:
- What was changed
- Why it was changed
- Any decisions made
- References to relevant files/episodes
```

## File Structure

### Episode Analysis Structure
Each episode directory follows this structure:
```
Episodes/eXX_episode_name/
├── eXX_episode_name.mp3          # Audio (reference only, don't commit)
├── transcript.md                  # Raw Whisper transcript
├── transcript_cleaned.md          # Corrected version if needed
├── summary.md                     # High-level episode summary
├── outline.md                     # Detailed structural outline
├── quotes.md                      # Significant passages/quotes
├── themes.md                      # Key themes and concepts
├── references.md                  # People/works mentioned
└── notes.md                       # Working notes and observations
```

### Project Directories
- `Templates/`: Template files for consistent processing
- `Progress/`: Task tracking and progress monitoring
- `References/`: Cross-references, bibliography, indexing
- `Drafts/`: Chapter drafts and compiled versions
- `Tools/`: Scripts and utilities

### Other locations
- Original episode audio files can be found at this location: /Users/alex/Dropbox/Projects/websites/artagainst/hugo/static/episodes
- The master repository of podcast files including research, drafts etc. can be found at this location: /Users/alex/Dropbox/Vaults/Art Against Mental Illness

## Episode Processing Workflow

### 1. Transcription
- Check if transcript exists; if not, use Whisper with en-small model
- Commit raw transcript first
- Create cleaned version correcting obvious errors
- Ask Alex about unclear terms; add to glossary

### 2. Analysis
- Create all analysis files following the standard structure
- Extract significant passages verbatim
- Note themes and cross-references
- Track all people/works mentioned for bibliography

### 3. Documentation
- Update progress tracking
- Note any decisions made
- Commit all files individually with detailed messages

## Cross-Reference System

Use placeholder format for cross-references:
- `[REF:creativity-basics]` for concept references
- `[SEE:space-chapter]` for chapter references
- Never use hardcoded chapter numbers

These are replaced during final compilation.

## Voice and Style Guidelines

### Alex's Voice Characteristics
- Conversational and approachable
- Philosophical but practical
- Personal and autobiographical
- Broad interpretation of "art" (includes coding, writing, etc.)
- Focus on process over output for mental health

### Tone
- Direct but warm
- Thoughtful and reflective
- Inclusive (not just traditional artists)
- Encouraging rather than instructional

### Writing Approach
- Use original text verbatim where possible
- Clean up only for grammar/spelling clarity
- Maintain Alex's specific terms and phrases
- Build chapters that can stand alone but connect thematically

## Progress Tracking

### Required Tracking
- Log every identifiable task completed
- Note all explicit decisions made by Alex
- Maintain audit trail of all interactions
- Update progress files regularly

### Progress File Locations
- `Progress/episode_status.md` - Episode processing status
- `Progress/chapter_status.md` - Chapter development status
- `DECISIONS_LOG.md` - All explicit decisions (main directory)

## Glossary Management

### Building the Glossary
- Add terms as encountered during transcription
- Note common mistranslations/misspellings
- Focus on Alex-specific or podcast-specific terms
- Store in `References/glossary.md`

## Bibliography Requirements

### Include These Source Types
- Traditional books and articles
- YouTube videos
- Podcasts
- People mentioned
- Artists referenced
- Any recommended resources

### Format
Store in `References/bibliography.md` with consistent formatting for each source type.

## Chapter Development

### Before Writing
- Complete episode analysis for all relevant episodes
- Create master structure (awaiting Alex approval)
- Develop detailed chapter outlines with file references

### During Writing
- Work from outlines and original text
- Maintain cross-reference tracking
- Note compilation needs (chapter ordering, etc.)
- Keep chapters self-contained but thematically connected

### Quality Standards
- Should not be apparent AI was involved
- Maintain Alex's voice throughout
- Focus on creativity for mental health, not mastery
- Include practical advice alongside philosophy

## Common Commands

### Build/Test Commands
```bash
# Environment setup and activation
conda activate enchillama

# Transcription (single episode)
whisper --model small.en --output_format txt --language en "episode_name.mp3"

# Batch transcription (run from Episodes directory)
./transcribe_missing.sh

# Check transcription status
ls -la */transcript.md
ls -la */*transcript.md
```

### Transcription
```bash
whisper [audio_file] --model small --language en --output_format txt
```

## File Templates

Templates are available in `Templates/` directory for:
- Episode analysis files
- Chapter outlines
- Progress tracking
- Reference management

## Conflict Resolution

### For Large Changes
- Create feature branch
- Make all related changes
- Let Alex handle merge conflicts
- Document any unclear conflicts

### For Simple Changes
- Work on main branch
- Commit frequently with clear messages
- Note any potential conflicts in commit messages

## Quality Checklist

Before completing any task:
- [ ] All files follow standard structure
- [ ] Cross-references use placeholder format
- [ ] Original voice/tone maintained
- [ ] Progress tracking updated
- [ ] All changes committed with detailed messages
- [ ] Any decisions or interactions logged

## Emergency Contacts

For unclear terms, transcription issues, or major decisions, ask Alex directly and log the interaction in `DECISIONS_LOG.md`.

---

*This guide is updated as the project evolves. Always check for the latest version before starting work.*
