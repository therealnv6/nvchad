local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local builtins = null_ls.builtins

local sources = {
  builtins.formatting.deno_fmt,
  builtins.formatting.prettier.with {
    filetypes = {
      "html",
      "markdown",
      "css",
    },
  },

  builtins.formatting.stylua,

  -- cpp
  builtins.formatting.clang_format,

  -- rust
  builtins.formatting.rustfmt,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
