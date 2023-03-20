-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    -- switch alternate buffers
    ["<leader><leader>"] = {"<c-^>", desc = "Switch alternate buffers"},
    -- duplicate current line
    ["<c-d>"] = { "Vyp", desc = "Duplicate current line" },
    -- show BufExplorer
    ["<leader>z"] = { function() require("telescope.builtin").buffers() end, desc = "Find buffers" },

    -- key mapping to move line/selected lines using Ctrl-up/down 
    ["c-Up"] = { ":m-2<cr>==", desc = "move current row one up"},
    ["c-k"] = { ":m-2<cr>==", desc = "move current row one up"},
    ["c-Down"] = { ":m+<cr>==", desc = "move current row one down"},
    ["c-j"] = { ":m+<cr>==", desc = "move current row one down"},
  },
  i = {
    -- duplicate current line
    ["<c-d>"] = { "Vyp", desc = "Duplicate current line" },

    -- key mapping to move line/selected lines using Ctrl-up/down 
    ["c-Up"] = { "<esc>:m-2<cr>==gi", desc = "move current row one up"},
    ["c-k"] = { "<esc>:m-2<cr>==gi", desc = "move current row one up"},
    ["c-Down"] = { "<esc>:m+<cr>==gi", desc = "move current row one down"},
    ["c-j"] = { "<esc>:m+<cr>==gi", desc = "move current row one down"},
  },
  v = {
    -- key mapping to move line/selected lines using Ctrl-up/down 
    ["c-Up"] = { ":m-2<CR>gv=gv", desc = "move current row one up"},
    ["c-k"] = { ":m-2<CR>gv=gv", desc = "move current row one up"},
    ["c-Down"] = { ":m'>+<CR>gv=gv", desc = "move current row one down"},
    ["c-j"] = { ":m'>+<CR>gv=gv", desc = "move current row one down"},
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
