# Git Workflow and Collaboration Guidelines

This document defines the git workflow, branching strategy, and collaboration protocols for the Art Against Mental Illness book project.

## Core Git Principles

### 1. Complete Audit Trail
- **Every Change Tracked**: All content changes must be committed with detailed messages
- **Decision Logging**: All decisions by Alex logged in DECISIONS_LOG.md
- **Progress Tracking**: Task completion tracked and committed
- **Agent Handoffs**: Clear commit messages for agent transitions

### 2. Multi-Agent Safe Operations
- **Conflict Prevention**: Clear guidelines for when to branch vs. work on main
- **Conflict Resolution**: Alex handles merge conflicts when they occur
- **State Documentation**: Each commit should leave project in clear state
- **Context Preservation**: Commit messages provide context for future agents

### 3. Publication-Ready Process
- **Clean History**: Meaningful commit messages for future reference
- **Reusable Process**: Workflow designed for future book projects
- **Documentation**: All processes documented for reproducibility

## Branching Strategy

### Main Branch Usage
**Use main branch for:**
- Episode analysis work (individual episode processing)
- Single chapter drafting
- Template updates
- Documentation updates
- Progress tracking updates
- Small, atomic changes that don't affect multiple files

### Feature Branch Usage
**Create feature branches for:**
- Large-scale changes affecting multiple chapters
- Cross-book editing (consistency, terminology, style)
- Reference system updates affecting multiple files
- Major structural changes
- Experimental work that might be reverted

### Branch Naming Conventions
```
feature/[description]          # For multi-file features
episode/eXX-[episode-name]     # For episode processing
chapter/[chapter-theme]        # For chapter development
fix/[issue-description]        # For bug fixes or corrections
review/[review-scope]          # For review and editing passes
```

## Commit Message Standards

### Format Template
```
[Type]: Brief description (50 chars max)

Detailed explanation:
- What was changed and why
- Any decisions made during work
- References to episodes/chapters affected
- Context for future agents
- Questions or issues for Alex

[Optional sections:]
Files affected: [list of key files]
Cross-references: [any refs created/updated]
Questions for Alex: [anything needing clarification]
Next steps: [what should happen next]
```

### Commit Types
- **[Episode]**: Episode analysis work
- **[Chapter]**: Chapter drafting or revision
- **[Template]**: Template creation or updates
- **[Structure]**: Project structure changes
- **[Docs]**: Documentation updates
- **[Progress]**: Progress tracking updates
- **[Fix]**: Corrections or fixes
- **[Review]**: Review and editing work
- **[Merge]**: Merge commits (handled by Alex)

### Example Commit Messages

#### Good Episode Processing Commit
```
[Episode]: Complete analysis of e05_space episode

- Transcribed using Whisper en-small model
- Identified key themes: physical space, mental space, creative environment
- Extracted 12 significant passages for potential book use
- Cross-referenced with e02_process and e06_experimentation
- Added 3 terms to glossary for Alex-specific vocabulary

Files affected: Episodes/e05_space/* (all analysis files)
Cross-references: [REF:creative-space], [SEE:process-space-connection]
Questions for Alex: Meaning of "mise-en-scène" vs "mise-en-place" usage
Next steps: Process e06_experimentation for thematic connections
```

#### Good Chapter Development Commit
```
[Chapter]: Draft introduction chapter incorporating episodes 1-3

- Used verbatim passages from e01_beginnings for opening voice
- Integrated Alex's personal story from e02_process 
- Established core thesis using exact language from transcripts
- Created 5 cross-references to future chapters
- Preserved conversational tone throughout

Files affected: Drafts/ch01_introduction/
Cross-references: [REF:core-thesis], [SEE:process-chapter]
Voice check: Maintained Alex's authentic voice per guidelines
Next steps: Review chapter flow and transitions
```

## Collaboration Protocols

### Multi-Agent Coordination

#### Before Starting Work
1. **Pull Latest Changes**: Always start with current repository state
2. **Check Progress Files**: Review what's been completed and what's in progress
3. **Read Recent Commits**: Understand recent work and decisions
4. **Update Progress**: Mark your intended task as "in-progress"

#### During Work
1. **Frequent Commits**: Commit logical chunks of work with detailed messages
2. **Progress Updates**: Update progress tracking as tasks complete
3. **Decision Logging**: Log any decisions or questions in appropriate files
4. **Clear Documentation**: Leave clear notes for handoff to other agents

#### After Completing Work
1. **Final Commit**: Commit all work with comprehensive message
2. **Progress Update**: Mark tasks complete and note any follow-up needed
3. **Status Documentation**: Update relevant status files
4. **Handoff Notes**: Clear documentation for next agent

### Conflict Resolution

#### When Conflicts Occur
1. **Don't Resolve Complex Conflicts**: Leave for Alex to handle
2. **Document Conflicts**: Note what conflicts exist and why
3. **Provide Context**: Explain both sides of conflicting changes
4. **Simple Conflicts Only**: Only resolve obvious, non-content conflicts

#### Conflict Prevention
1. **Coordinate Large Changes**: Use feature branches for multi-file work
2. **Communicate Intent**: Clear commit messages about planned changes
3. **Work Atomically**: Complete related changes in single commits
4. **Update Frequently**: Regular pulls to stay current

### Remote Repository Management

#### Push Strategy
- **Regular Pushes**: Push completed work frequently
- **Atomic Pushes**: Push complete, logical units of work
- **Branch Pushes**: Push feature branches for backup and collaboration
- **Status Updates**: Include progress updates in pushes

#### Pull Strategy
- **Start with Pull**: Always pull before beginning work
- **Regular Updates**: Pull frequently during long sessions
- **Conflict Awareness**: Be prepared for merge conflicts
- **Status Awareness**: Review recent commits for context

## File Management Guidelines

### Episode Processing
```bash
# Start episode processing
git pull
git checkout -b episode/eXX-[episode-name]  # If complex work
# OR work on main for simple episode processing

# Commit transcript first
git add Episodes/eXX_*/transcript.md
git commit -m "[Episode]: Add raw transcript for eXX_episode_name"

# Commit each analysis file individually
git add Episodes/eXX_*/summary.md
git commit -m "[Episode]: Complete summary analysis for eXX"

# Continue for each file, then push
git push origin [branch-name]
```

### Chapter Development
```bash
# Start chapter work
git pull
git checkout -b chapter/[chapter-theme]

# Work on chapter, committing logical sections
git add Drafts/ch0X_*/
git commit -m "[Chapter]: Draft opening section with e01 integration"

# Continue development with regular commits
git add -A
git commit -m "[Chapter]: Complete first draft of [chapter-theme]"

# Push for backup/collaboration
git push origin chapter/[chapter-theme]
```

### Progress Tracking
```bash
# Update progress after any significant work
git add Progress/
git commit -m "[Progress]: Update episode processing status"

# Always commit progress updates
git add DECISIONS_LOG.md
git commit -m "[Docs]: Log Alex's decision about [topic]"
```

## Quality Assurance Workflow

### Pre-Commit Checks
1. **File Structure**: Verify all files follow established templates
2. **Cross-References**: Check placeholder format consistency
3. **Progress Updates**: Ensure progress tracking is current
4. **Documentation**: Verify all work is properly documented

### Commit Message Review
1. **Clarity**: Message clearly explains what was done
2. **Context**: Sufficient context for future agents
3. **Decisions**: Any decisions made are documented
4. **Questions**: Any questions for Alex are noted

### Branch Management
1. **Clean Branches**: Feature branches serve clear purposes
2. **Complete Work**: Branches contain complete, logical units
3. **Documentation**: Branch purpose and status are clear
4. **Merge Readiness**: Branches are ready for Alex to merge

## Tools and Scripts

### Useful Git Aliases
```bash
# Add to ~/.gitconfig
[alias]
    episode = "checkout -b episode/"
    chapter = "checkout -b chapter/"
    review = "checkout -b review/"
    logp = "log --oneline --graph --decorate"
    status = "status --short --branch"
```

### Automated Checks
```bash
# Verify cross-reference format
grep -r "\[REF:" --exclude-dir=.git
grep -r "\[SEE:" --exclude-dir=.git

# Check for placeholder consistency
find . -name "*.md" -exec grep -l "\[.*\]" {} \;
```

## Troubleshooting Common Issues

### Large File Handling
- **Audio Files**: Never commit .mp3 files (reference only)
- **Binary Files**: Avoid committing any binary files
- **.gitignore**: Maintain proper .gitignore for audio files

### Merge Conflicts
- **Content Conflicts**: Always let Alex resolve
- **Metadata Conflicts**: Simple formatting conflicts can be resolved
- **Documentation**: Document conflicts clearly for Alex

### Branch Confusion
- **Stay on Task**: Keep branches focused on single purposes
- **Regular Pulls**: Stay current with main branch
- **Clear Naming**: Use descriptive branch names

---

*This workflow ensures clean collaboration, complete audit trails, and publication-ready processes.*
