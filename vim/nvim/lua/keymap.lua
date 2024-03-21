local builtin = require('telescope.builtin')

-- files to ignore with `file_ignore_patterns`
local excludedFiles = {
'yarn%.lock',
'package%-lock%.json',
'node_modules/.*',
'%.git/.*',
}
local telescopeOpts = {
    hidden = true,
    follow = true,
    file_ignore_patterns = excludedFiles,
    path_display = { "truncate" }
}

local findFile = function ()
    -- builtin.find_files(require('telescope.themes').get_dropdown(telescopeOpts))
    builtin.find_files(telescopeOpts)
end
local searchFile = function ()
    -- builtin.live_grep(require('telescope.themes').get_dropdown(telescopeOpts))
    builtin.live_grep(telescopeOpts)
end

-- File navigation
vim.keymap.set('n', '<C-p>', findFile, {desc = 'Find in Files'})
vim.keymap.set('n', '<C-S-F>', searchFile, {desc = 'Files'})
vim.keymap.set('n', '<leader>fr', builtin.buffers, {desc = 'Find buffer'})
vim.keymap.set('n', '<C-b>', ":Neotree toggle=true reveal<CR>", {desc = 'File explorer'})
vim.keymap.set('n', '<leader>b', ":Neotree reveal<CR>", {desc = 'File explorer reveal'})

-- Editor action
vim.keymap.set('n', '<leader>r', ':IncRename ', {desc = 'Rename'})

-- Clipboard system
vim.keymap.set('v', '<leader>y',  '"+y')
vim.keymap.set('n', '<leader>Y',  '"+yg_')
vim.keymap.set('n', '<leader>y',  '"+y')
vim.keymap.set('n', '<leader>yy',  '"+yy')
vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('n', '<leader>P', '"+P')
vim.keymap.set('v', '<leader>p', '"+p')
vim.keymap.set('v', '<leader>P', '"+P')
