return {
  "ziontee113/syntax-tree-surfer",
  config = function()
    -- Syntax Tree Surfer
    require("syntax-tree-surfer").setup({})
    local opts = { noremap = true, silent = true }

    -- Normal Mode Swapping:
    -- Swap The Master Node relative to the cursor with it's siblings, Dot Repeatable
    vim.keymap.set("n", "<C-A-k>", function()
      vim.opt.opfunc = "v:lua.STSSwapUpNormal_Dot"
      return "g@l"
    end, { silent = true, expr = true })
    vim.keymap.set("n", "<C-A-j>", function()
      vim.opt.opfunc = "v:lua.STSSwapDownNormal_Dot"
      return "g@l"
    end, { silent = true, expr = true })

    -- Visual Selection from Normal Mode
    vim.keymap.set("n", "vau", '<cmd>STSSelectMasterNode<cr>', opts)
    vim.keymap.set("n", "viu", '<cmd>STSSelectCurrentNode<cr>', opts)
  end
}
