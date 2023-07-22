function run_command(name, callback, opts)
  vim.api.nvim_create_user_command(name, callback, opts or {})
end

return run_command
