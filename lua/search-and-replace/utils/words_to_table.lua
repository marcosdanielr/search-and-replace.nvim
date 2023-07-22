local function words_to_table(input)
  local result = {}
  for non_word, word, final_non_word in input:gmatch "([^%w]*)(%w+)([^%w]*)" do
    if non_word ~= '' then
      table.insert(result, non_word)
    end
    table.insert(result, word)
    if final_non_word ~= '' then
      table.insert(result, final_non_word)
    end
  end
  return result
end

return words_to_table