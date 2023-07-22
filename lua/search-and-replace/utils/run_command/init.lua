local run_command = function(name, callback, opts)
  local api = vim.api

  api.nvim_create_user_command(name, callback, opts or {})
end

return run_command
