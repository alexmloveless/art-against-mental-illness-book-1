# Art Against Mental Illness Book

A non-fiction book distilling core themes from the "Art Against Mental Illness" podcast, preserving Alex's authentic voice while creating a standalone work that builds chapter by chapter.

## 📖 Project Overview

This repository contains the complete authoring workflow for converting podcast episodes into book content. The project follows an iterative, git-based approach with detailed audit trails, designed to be worked on by multiple agents while maintaining consistency and quality.

**Working Title**: Art Against Mental Illness  
**Author**: Alex  
**Approach**: Chunked, systematic analysis of podcast episodes with preservation of original voice and style

## 🎯 Core Principles

- **Preserve Alex's Voice**: Use original text verbatim where possible, maintaining words, tone, and style
- **Chunked Work**: Process one piece at a time (episode, chapter, or section)
- **Git Everything**: Every change committed with detailed audit trail
- **Multi-Agent Safe**: Any agent can pick up work at any point
- **Quality First**: Focus on creativity for mental health, not mastery

## 📁 Repository Structure

```
├── Episodes/           # Individual episode analysis and transcripts
│   ├── e01_beginnings/
│   │   ├── transcript.md
│   │   ├── summary.md
│   │   ├── outline.md
│   │   ├── quotes.md
│   │   ├── themes.md
│   │   ├── references.md
│   │   └── notes.md
│   └── ...
├── Drafts/            # Chapter drafts and compiled content
├── Progress/          # Status tracking and project monitoring
├── References/        # Cross-references, bibliography, indexing
├── Templates/         # Standard templates for consistent processing
├── Tools/            # Scripts and utilities
├── Notes/            # Working notes and observations
├── AGENT.md          # Complete agent guide for working on project
├── AUTHORING.md      # Detailed authoring guidelines
└── DECISIONS_LOG.md  # Record of all project decisions
```

## 🚀 Getting Started

### Prerequisites

```bash
# Conda environment (recommended)
conda activate [your_environment]

# Required for transcription
pip install openai-whisper
```

### For Agents/Contributors

1. **Read the Agent Guide**: Start with [`AGENT.md`](AGENT.md) for complete context
2. **Check Progress**: Review [`Progress/episode_status.md`](Progress/episode_status.md) for current status
3. **Follow Workflow**: Use standard episode processing workflow
4. **Commit Everything**: Detailed commit messages required for audit trail

### Episode Processing Workflow

1. **Transcription**: Use Whisper to create transcripts if needed
2. **Analysis**: Create all required analysis files following templates
3. **Documentation**: Update progress tracking and commit all changes
4. **Quality Check**: Ensure voice preservation and cross-reference consistency

## 📊 Current Status

**Episode Analysis Progress**: 13/37 episodes complete (35%)

### ✅ Completed Episodes
- e01_beginnings - Foundation episode
- e02_process - Core theme episode  
- e03_perfectionism - Mental health focus
- e04_sharing - Community and vulnerability
- e05_space - Creative environment
- e06_experimentation - Therapeutic necessity of creative risk
- e07_stories - Narrative and meaning-making
- e09_breaking_the_rules - Creative freedom
- e10_suffering_for_art - Dismantling harmful myths
- e11_transitions - Creativity during upheaval
- e12_how_to_be_creative_pt1 - Foundational framework
- e23_talking_therapy_sharon_milton - Interview format
- e35_your_attention_please - Focus and creativity

### 🔄 In Progress
See [`Progress/episode_status.md`](Progress/episode_status.md) for detailed status tracking.

## 🎨 About the Content

### Voice and Style
- **Conversational and approachable** - Maintains podcast's accessible tone
- **Philosophical but practical** - Deep concepts with actionable insights
- **Personal and autobiographical** - Alex's authentic experiences
- **Inclusive definition of "art"** - Coding, writing, traditional arts, and more
- **Process over output** - Mental health through creative practice

### Key Themes
- Creativity as mental health tool, not luxury
- Dismantling "suffering for art" mythology
- Experimentation and rule-breaking as therapeutic necessities
- Creative space as sanctuary and healing environment
- Community, sharing, and vulnerability in artistic practice

## 🔧 Technical Details

### Transcription
```bash
# Single episode transcription
whisper episode_name.mp3 --model small.en --output_format txt --language en

# Batch transcription
./Tools/transcribe_missing.sh
```

### Git Workflow
- Work on main branch for normal tasks
- Feature branches for large multi-file changes
- Descriptive commit messages with detailed context
- Use `commit` tool with audit trail notes

### Cross-Reference System
- `[REF:creativity-basics]` for concept references
- `[SEE:space-chapter]` for chapter references
- Placeholders replaced during final compilation
- No hardcoded chapter numbers

## 📚 Key Files

- **[`AGENT.md`](AGENT.md)** - Complete guide for agents working on the project
- **[`AUTHORING.md`](AUTHORING.md)** - Detailed writing and style guidelines
- **[`DECISIONS_LOG.md`](DECISIONS_LOG.md)** - Record of all explicit project decisions
- **[`Progress/episode_status.md`](Progress/episode_status.md)** - Current processing status
- **[`Templates/`](Templates/)** - Standard templates for all file types

## 🤝 Contributing

### For Agents
1. Always start by reading [`AGENT.md`](AGENT.md)
2. Check current status in [`Progress/`](Progress/) directory
3. Follow standard episode processing workflow
4. Commit each file individually with detailed messages
5. Update progress tracking after completing tasks

### For Reviewers
- Focus on voice preservation and authenticity
- Check cross-reference consistency
- Verify thematic connections between episodes
- Ensure practical advice balances philosophical content

## 📈 Quality Standards

- Should not be apparent AI was involved in the writing
- Maintains Alex's authentic voice throughout
- Focuses on creativity for mental health, not artistic mastery
- Includes practical advice alongside philosophical insights
- Each chapter can stand alone while connecting thematically

## 🎵 About the Podcast

"Art Against Mental Illness" explores how creative practice serves as a therapeutic tool for mental health. Alex shares personal experiences, practical advice, and philosophical insights about using creativity to support wellbeing, with a focus on process over product and accessibility over mastery.

## 📄 License

This project contains original content from the "Art Against Mental Illness" podcast. Please respect intellectual property rights and use appropriate attribution.

---

**Note**: This is an active authoring project. File structures, workflows, and content are subject to change as the book develops. Always check the latest commit for current status and guidelines.
