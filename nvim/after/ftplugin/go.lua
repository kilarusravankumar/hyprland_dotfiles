-- Run the Go test function the cursor is currently inside of.

local function nearest_test_name()
  local node = vim.treesitter.get_node()
  while node do
    if node:type() == "function_declaration" then
      local name_node = node:field("name")[1]
      if name_node then
        local name = vim.treesitter.get_node_text(name_node, 0)
        if name:match("^Test") then
          return name
        end
      end
    end
    node = node:parent()
  end
  return nil
end

local function run_go_test(pattern)
  vim.cmd("write")
  vim.cmd("botright split | terminal go test -run '^" .. pattern .. "$' -v ./...")
  vim.cmd("startinsert")
end

vim.keymap.set("n", "<leader>tt", function()
  local name = nearest_test_name()
  if not name then
    vim.notify("No Go test function under cursor", vim.log.levels.WARN)
    return
  end
  vim.g.go_last_test = name
  run_go_test(name)
end, { buffer = true, desc = "Go: run nearest test" })

vim.keymap.set("n", "<leader>tl", function()
  if not vim.g.go_last_test then
    vim.notify("No previous Go test to rerun", vim.log.levels.WARN)
    return
  end
  run_go_test(vim.g.go_last_test)
end, { buffer = true, desc = "Go: rerun last test" })

vim.keymap.set("n", "<leader>tf", function()
  vim.cmd("write")
  vim.cmd("botright split | terminal go test -v ./...")
  vim.cmd("startinsert")
end, { buffer = true, desc = "Go: run all tests in package" })
