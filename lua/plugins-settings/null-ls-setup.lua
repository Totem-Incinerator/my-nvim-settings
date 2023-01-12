local null_ls_status_ok, null_ls = pcall(require, "null-ls")
local utils = require("null-ls.utils")
if not null_ls_status_ok then
  return
end

null_ls.setup({
    
    root_dir = utils.root_pattern("composer.json", "package.json", "Makefile", ".git"), -- Add composer
    diagnostics_format = "#{m} (#{c}) [#{s}]",    -- Makes PHPCS errors more readeable

    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.completion.spell,
        null_ls.builtins.formatting.phpcsfixer,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.phpcs.with({
          prefer_local = "C:/Users/Jhonathan/AppData/Roaming/Composer/vendor/bin"
        }),
        null_ls.builtins.formatting.phpcbf.with({
          prefer_local = "C:/Users/Jhonathan/AppData/Roaming/Composer/vendor/bin"
        }),
    },
})

