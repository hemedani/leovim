require'lspconfig'.denols.setup{
    autostart = false,
    on_init = function ()
       vim.lsp.stop_client(vim.lsp.get_active_clients()) 
    end,
    cmd = { "deno", "lsp" },
        init_options = {
      enable = true,
      lint = true,
      unstable = true
    },
    root_dir = require('lspconfig/util').root_pattern("package.json", "tsconfig.json", ".git"),
}
