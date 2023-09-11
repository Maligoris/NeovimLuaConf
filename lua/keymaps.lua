local bind = vim.keymap.set
local default_opts = {noremap = true, silent = true}
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
-- Fuzzy Search. CTRL+a для поиска по файлам, CTRL+p для поиска по буфферам
bind('n', '<C-a>', [[ <cmd>lua require('telescope.builtin').find_files()<cr> ]], default_opts)
bind('n', '<C-p>', [[ <cmd>lua require('telescope.builtin').buffers()<cr> ]], default_opts)
-- <S-F5> Греповский поиск слова под курсором
bind('n', '<S-F5>', [[<cmd>lua require('telescope.builtin').grep_string()<cr>]], default_opts)
-- <S-F4> Греповский поиск слова в модальном окошке
bind('n', '<S-F4>', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], default_opts)
-----------------------------------------------------------
-- ФАЙЛЫ
-----------------------------------------------------------
-- Сделать автодополнение на Tab
bind('i', '<Tab>', '<C-p>')

-- Переключение между окнами
bind('n', '<C-J>', '<C-W><C-J>')
bind('n', '<C-K>', '<C-W><C-K>')
bind('n', '<C-L>', '<C-W><C-L>')
bind('n', '<C-H>', '<C-W><C-H>')

-- развернуть складку
bind('n', '<space>', 'za') 

-- " Плагин ALE
-- nnoremap ]r :ALENextWrap<CR>     " move to the next ALE warning / error
-- nnoremap [r :ALEPreviousWrap<CR> " move to the previous ALE warning / error
-- noremap <leader>a :ALEToggle<CR>
-- let g:ale_enabled = 0

-- " Плагин Prettier. Замена команды :Prettier на комбинацию клавиш gp
-- nnoremap gp :silent %!prettier --stdin-filepath %<CR>

-- " Плагин FZF (FZF.vim)
-- nmap ; :Buffers<CR>
-- nmap <Leader>f :Files<CR>
-- nmap <Leader>t :Tags<CR>

