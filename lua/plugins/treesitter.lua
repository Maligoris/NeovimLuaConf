local load_textobjects = false
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function () 
    local configs = require("nvim-treesitter.configs")

    configs.setup({
        ensure_installed = { "c", "lua", "vim", "query", "rust", "javascript", "typescript", "html", "python", "haskell", "json",  },
        auto_install = true,
        sync_install = false,                                                                                                    
        highlight = { 
          enable = true ,                                                                                           
          additional_vim_regex_highlighting = false,                                                                                              
        },
    })                                                                                                                        
  end                                                                                                                            
}                                                                                                                                
                                                                                                                                 
                                                                                                                                 
                                                                                                                                 
                                                                                                                                 
                                                                                                                                 
