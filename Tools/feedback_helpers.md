# Feedback Helpers for Neovim + Git

## Git Aliases

Add these to your `.gitconfig` or run directly:

```bash
# Quick feedback commit
git config alias.feedback 'commit -am "Alex feedback on proposal - ready for processing"'

# Status check for feedback files
git config alias.fb-status 'status Drafts/ References/ Progress/'

# Quick push after feedback
git config alias.fb-push 'push origin main'
```

Usage:
```bash
git feedback && git fb-push
```

## Neovim Snippets

Add to your `~/.config/nvim/snippets/markdown.snippets` (or create if missing):

```snippets
# Alex feedback comment
snippet afb "Alex feedback comment"
**[ALEX FEEDBACK: ${1:your comment here}]**
endsnippet

# Alex decision marker
snippet adec "Alex decision"
**[ALEX DECISION: ${1:decision here}]**
endsnippet

# Alex question marker  
snippet aq "Alex question"
**[ALEX QUESTION: ${1:question here}]**
endsnippet
```

## Neovim Keybindings

Add to your `~/.config/nvim/init.lua`:

```lua
-- Quick feedback comment insertion
vim.keymap.set('i', '<leader>af', '**[ALEX FEEDBACK: ]**<Esc>hi', { desc = 'Insert Alex feedback comment' })
vim.keymap.set('n', '<leader>af', 'a**[ALEX FEEDBACK: ]**<Esc>hi', { desc = 'Insert Alex feedback comment' })

-- Quick save and git add current file
vim.keymap.set('n', '<leader>gs', ':w<CR>:!git add %<CR>', { desc = 'Save and git add current file' })
```

## Quick Setup Script

Run this once:

```bash
# Set up git aliases
git config alias.feedback 'commit -am "Alex feedback on proposal - ready for processing"'
git config alias.fb-status 'status Drafts/ References/ Progress/'
git config alias.fb-push 'push origin main'

echo "Git aliases set up! Use: git feedback && git fb-push"
```

## Usage Workflow

1. **Edit proposal**: Open `Drafts/BOOK_STRUCTURE_PROPOSAL.md` in neovim
2. **Add comments**: Use `<leader>af` or `:afb` snippet to insert feedback
3. **Save and stage**: Use `<leader>gs` or `:w` then `git add Drafts/BOOK_STRUCTURE_PROPOSAL.md`
4. **Commit and push**: `git feedback && git fb-push`
5. **Notify agent**: Tell me you've added feedback

This keeps everything in git history and makes the feedback process fast and consistent.
