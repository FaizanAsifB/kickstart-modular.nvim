return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    vim.keymap.set('n', '<leader>i', function()
      harpoon:list():prepend()
    end, { desc = 'Prepend file to Harpoon' })
    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = '[A]dd file to Harpoon' })
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set('n', '<C-1>', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<C-2>', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<C-3>', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<C-4>', function()
      harpoon:list():select(4)
    end)
    vim.keymap.set('n', '<leader><C-1>', function()
      harpoon:list():replace_at(1)
    end, {
      desc = 'which_key_ignore',
    })
    vim.keymap.set('n', '<leader><C-2>', function()
      harpoon:list():replace_at(2)
    end, {
      desc = 'which_key_ignore',
    })
    vim.keymap.set('n', '<leader><C-3>', function()
      harpoon:list():replace_at(3)
    end, {
      desc = 'which_key_ignore',
    })
    vim.keymap.set('n', '<leader><C-4>', function()
      harpoon:list():replace_at(4)
    end, {
      desc = 'which_key_ignore',
    })
  end,
}
