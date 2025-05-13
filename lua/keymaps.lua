local bind = vim.keymap.set
local default_opts = {noremap = true, silent = true}
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
local opt = vim.opt


-----------------------------------------------------------
-- РЕЖИМЫ
-----------------------------------------------------------
-- Выходим в нормальный режим через <jk>, чтобы не тянуться
bind('i', 'jk', '<Esc>', {noremap = true})
-----------------------------------------------------------
-- ПОИСК
----------------------------------------------------------- 
-- Выключить подсветку поиска через <F3>
bind('n', '<F3>', ':nohlsearch<CR>', {noremap = true})
-- Сделать автодополнение на Tab
-- bind('i', '<Tab>', '<C-n>')
-- bind("i", "<Tab>", 'pumvisible() ? "<C-p>" : "<Tab>"', opts)
-- bind("i", "<S-Tab>", 'pumvisible() ? "<C-n>" : "<C-h>"', opts)

-----------------------------------------------------------
-- ФАЙЛЫ
-----------------------------------------------------------
-- Переключение между окнами
bind('n', '<C-J>', '<C-W><C-J>')
bind('n', '<C-K>', '<C-W><C-K>')
bind('n', '<C-L>', '<C-W><C-L>')
bind('n', '<C-H>', '<C-W><C-H>')

-- " Плагин ALE
-- nnoremap ]r :ALENextWrap<CR>     " move to the next ALE warning / error
-- nnoremap [r :ALEPreviousWrap<CR> " move to the previous ALE warning / error
-- noremap <leader>a :ALEToggle<CR>
-- let g:ale_enabled = 0

-- " Плагин Prettier. Замена команды :Prettier на комбинацию клавиш gp
-- nnoremap gp :silent %!prettier --stdin-filepath %<CR>

-- " Плагин Telescope
bind('n', '<leader>;', [[ <cmd>lua require('telescope.builtin').buffers()<cr> ]], default_opts) -- Пробел + ; для поиска по буфферам
bind('n', '<leader>pf', [[ <cmd>lua require('telescope.builtin').find_files()<cr> ]], default_opts) -- Пробел + pf для поиска по файлам
bind('n', '<S-F5>', [[<cmd>lua require('telescope.builtin').grep_string()<cr>]], default_opts) -- <S-F5> Греповский поиск слова под курсором (Shift + F5)
bind('n', '<S-F4>', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], default_opts) -- <S-F4> Греповский поиск слова в модальном окошке
bind('n', '<C-p>', ":Telescope git_files<CR>") -- Fuzzy search through the output of git ls-files command, respects .gitignore

-- Плагин tpope/vim-fugitive
bind('n', '<leader>gs', vim.cmd.Git) -- Пробел + gs манипуляции с Git
