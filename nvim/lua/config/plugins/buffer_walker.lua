return {
  "shorya-1012/buffer_walker.nvim",
  config = function()
    vim.keymap.set("n", "<leader>,", ":MoveBack<CR>", { silent = true })
    vim.keymap.set("n", "<leader>.", ":MoveForward<CR>", { silent = true })
  end
}
