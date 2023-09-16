local opt = vim.opt
-----------------------------------------------------------
-- ОБЩИЕ ОПЦИИ
-----------------------------------------------------------
vim.scriptencoding = 'utf-8' --Кодировка
opt.encoding = 'utf-8'       --Кодировка
opt.fileencoding = 'utf-8'   --Кодировка

opt.autochdir = true         --Устанавливает рабочую папку в месте открытия файла 
opt.clipboard = "unnamedplus"-- Используем системный буфер обмена
opt.mouse = 'a'              --Включит мышь
opt.mousehide = true		     --Спрятать курсор мыши когда набираем текст
opt.showcmd = true           --Отображение команд
opt.swapfile = false         --Не создаем свап файлы
opt.backup = false
--opt.undodir = os.getenv("HOME") .."/.vim/undodir" -- Имеем доступ к истории отмены (Можем сделать отмену через несколько дней)
opt.undofile = true
opt.fixeol = false           --Отключаем дополнение файлов в конце
opt.confirm = true           --позволит избежать сообщений об ошибке при попытке закрыть(удалить) буфер с не сохраненными изменениями. Вместо ошибки будет появляться подтверждение закрытия не сохраненного файла
opt.foldmethod = "manual"    --Включение складок
-----------------------------------------------------------
-- ВИЗУАЛЬНЫЕ ОПЦИИ
-----------------------------------------------------------
opt.number = true            --Номер строк сбоку
opt.relativenumber = true    --релятивная нумерация
opt.linebreak = true         --Переносим на другую строчку, разрываем строки
opt.wrap = true              --Длинные линии будет видно
opt.showtabline = 1          --Вырубаем черточки на табах
opt.expandtab = true         --Ставим табы пробелами
opt.tabstop = 4              --1 tab = 4 пробела
opt.softtabstop = 4
opt.smartindent = true	     --Автоотступ
opt.shiftwidth = 4           --Смещаем на 4 пробела
opt.splitright = true        --Вертикальные сплиты становятся справа

opt.hlsearch = false
opt.incsearch = true
-- 2 spaces for selected filetypes
vim.cmd [[
autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml,htmljinja setlocal shiftwidth=2 tabstop=2
]]

-- remove line lenght marker for selected filetypes
vim.cmd [[autocmd FileType text,markdown,html,xhtml,javascript setlocal cc=0]]

opt.cursorline = true        -- Подсветка строки с курсором
opt.termguicolors = true     -- Хорошие цвета

-- Компактный вид у тагбара и Отк. сортировка по имени у тагбара
vim.g.tagbar_compact = 1
vim.g.tagbar_sort = 0

-----------------------------------------------------------
-- НАСТРОЙКИ ПОИСКА
-----------------------------------------------------------
-- Будет игнорировать размер букв при поиске
opt.ignorecase = true        --Игнорировать размер букв
opt.smartcase = true         --Игнор прописных букв
vim.g.netrw_keepdir = 0      --Синхронизировать текущий каталог и каталог просмотра
vim.g.netrw_winsize = 20     --Размер окна Netrw
vim.g.netrw_liststyle = 3    --netrw древовидный вид (Можно менять нажатием i в netrw)
-- vim.g.netrw_browse_split = 4 --Окткрытие новых файлов в предыдущем окне (Можно поменять на открытие в новом окне)
vim.g.netrw_banner = 0       --Убрать подсказку
vim.g.netrw_winsize = 15     --размер окна открываемое через команду Explore

-----------------------------------------------------------
-- ПОЛЕЗНЫЕ ФИШКИ
-----------------------------------------------------------
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.updatetime = 50

-- Подсвечивает на доли секунды скопированную часть текста
vim.api.nvim_exec([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=300}
augroup end
]], false)










