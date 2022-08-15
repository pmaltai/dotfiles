if !exists('g:loaded_telescope') | finish | endif

nnoremap <silent> ff <cmd>Telescope find_files<cr>
nnoremap <silent> fr <cmd>Telescope live_grep<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

lua << EOF
local actions = require('telescope.actions')
local fb_actions = require "telescope".extensions.file_browser.actions
local builtin = require("telescope.builtin")
-- Global remapping
------------------------------

require("telescope").setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- your custom insert mode mappings
        ["i"] = {
          ["<C-w>"] = function() vim.cmd('normal vbd') end,
        },
        ["n"] = {
          -- your custom normal mode mappings
          ["N"] = fb_actions.create,
          ["h"] = fb_actions.goto_parent_dir,
          ["/"] = function()
            vim.cmd('startinsert')
          end
        },
      },
    },
  },
}

require("telescope").load_extension "file_browser"

vim.keymap.set('n', 'ff',
  function()
    builtin.find_files({
      no_ignore = false,
      hidden = true
    })
  end)
vim.keymap.set('n', 'fr', function()
  builtin.live_grep()
end)
vim.keymap.set('n', '\\\\', function()
  builtin.buffers()
end)
vim.keymap.set('n', ';t', function()
  builtin.help_tags()
end)
vim.keymap.set('n', ';;', function()
  builtin.resume()
end)
vim.keymap.set('n', ';e', function()
  builtin.diagnostics()
end)

vim.api.nvim_set_keymap(
  "n",
  "fb",
  ":Telescope file_browser",
  { noremap = true }
)

