-- Neovim shortcuts for Alex feedback comments
-- Add this to your ~/.config/nvim/init.lua or source it

-- Quick feedback comment insertion
vim.keymap.set('i', '<C-f>', '**[ALEX FEEDBACK: ]**<Esc>hi', { desc = 'Insert Alex feedback comment' })
vim.keymap.set('n', '<leader>ed', 'a**[ALEX FEEDBACK: ]**<Esc>hi', { desc = 'Insert Alex feedback comment' })

-- Alternative with more context
vim.keymap.set('n', '<leader>af', function()
  local line = vim.fn.line('.')
  vim.fn.append(line, '**[ALEX FEEDBACK: ]**')
  vim.api.nvim_win_set_cursor(0, {line + 1, 16}) -- Position cursor inside brackets
  vim.cmd('startinsert!')
end, { desc = 'Add Alex feedback on new line' })

-- For visual mode - wrap selection
vim.keymap.set('v', '<leader>ed', function()
  vim.cmd('normal! gv')
  local start_pos = vim.fn.getpos("'<")
  local end_pos = vim.fn.getpos("'>")
  
  -- Add feedback comment above selection
  vim.fn.append(start_pos[2] - 1, '**[ALEX FEEDBACK: ]**')
  
  -- Move cursor to feedback comment
  vim.api.nvim_win_set_cursor(0, {start_pos[2], 16})
  vim.cmd('startinsert!')
end, { desc = 'Add feedback comment above selection' })
