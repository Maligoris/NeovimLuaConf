require('settings') 
require('keymaps')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")


-- Плагин lsp-zero
local lsp = require('lsp-zero').preset({})
lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', {buffer = bufnr})
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', {buffer = bufnr})
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', {buffer = bufnr})
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', {buffer = bufnr})
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', {buffer = bufnr})
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', {buffer = bufnr})
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', {buffer = bufnr})
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', {buffer = bufnr})
    vim.keymap.set('n', 'gp', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', {buffer = bufnr})
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', {buffer = bufnr})
    vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>', {buffer = bufnr})
    vim.keymap.set('n', '[d>', '<cmd>lua vim.diagnostic.goto_prev()<cr>', {buffer = bufnr})
    vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', {buffer = bufnr})
end)

-- Плагин Mason (Установка lsp серверов)
require('mason').setup({})
require('mason-lspconfig').setup({
    -- https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers   Список lsp-Серверов
    ensure_installed = {
      'tsserver',
      'rust_analyzer',
      'jedi_language_server', 
    },
    handlers = {
      lsp.default_setup,
    },
})

vim.cmd.colorscheme('monokai-pro')
