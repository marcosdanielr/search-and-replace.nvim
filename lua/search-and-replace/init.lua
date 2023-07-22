local words_to_table = require 'search-and-replace.utils.words_to_table'
local run_command = require 'search-and-replace.utils.run_command'

local function search_and_replace_each_one(args)
  local args_to_table = words_to_table(args)
  local word = args_to_table[1]
  local new_word = args_to_table[3]
  local replace_command = "%s/" .. word .. "/" .. new_word .. "/gc"
  vim.cmd(replace_command)
end

local function search_and_replace_all(args)
  local args_to_table = words_to_table(args)
  local word = args_to_table[1]
  local new_word = args_to_table[3]
  local replace_command = "%s/" .. word .. "/" .. new_word .. "/g"
  vim.cmd(replace_command)
end

local function setup_commands()
  run_command('SRA', function(data) search_and_replace_all(data.args) end, {
    nargs = "*"
  })
  run_command('SRE', function(data) search_and_replace_each_one(data.args) end, {
    nargs = "*"
  })
end

local function start()
  setup_commands()
end

return {
  start = start
}
