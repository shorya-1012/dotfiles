return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")


    dashboard.section.header.val = {
      "⣿⣿⣿⣿⣿⣿⣿⣿⡿⢸⢠⣿⣿⣿⡞⣿⣞⣿⣿⡜⣿⡾⣿⣷⣝⣿⣆⢿⣿⣿⣿⡇⣿⢼⣿⣿⣿⡼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣇⡎⢸⣿⣿⡟⢸⡹⣿⡞⢿⣷⡽⣿⣮⢿⣿⣎⢿⡼⣿⣿⣿⢧⡃⡞⣿⣿⣿⣷⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⢹⣧⢸⣿⣿⠙⢾⠇⠹⣿⣆⠻⣿⣜⢿⣷⣝⢿⣎⣷⢻⣿⢏⡔⣽⡷⢻⣿⣿⢿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣎⢿⣿⡾⢸⠀⠀⠙⢷⡔⡪⡻⣯⡻⣿⣏⠻⡞⣼⣿⣿⣧⣿⣿⡆⢿⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⡘⣷⣣⠂⠀⠀⠀⠀⠙⣎⢶⣵⣉⢊⣝⠦⢀⡈⣿⢻⣿⢸⠀⣿⢸⢳⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣸⣿⣯⢇⣮⠣⡀⠀⠀⠀⠀⠀⠈⠑⢌⠙⠳⠌⠉⠛⠂⢿⢸⡟⠸⡆⠇⡘⡞⡄⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⡏⣿⡼⣈⠸⣧⠙⠂⠀⠀⠀⠀⣧⣤⣤⡀⠀⣒⢶⣶⡆⣿⠸⠁⢀⣇⠸⡹⠑⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⡸⣰⣃⢧⠹⣇⠄⠀⠀⠀⣼⣷⣽⣿⣿⣿⣾⣿⣿⡇⣿⢀⠀⣼⠃⢰⣤⣁⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣕⢳⣌⢣⠹⣆⠀⡀⠠⣿⣿⡛⠍⣱⣿⣿⡿⣫⡆⣏⡌⠠⣣⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣷⣥⣬⡢⠈⢠⡨⠙⡻⣿⣿⢟⣫⠾⠛⠁⠀⣹⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣼⣧⣼⡀⠀⡒⠉⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⡫⣿⣿⣿⣿⣿⣿⠟⠊⠁⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⡟⣩⣶⣶⣯⣝⣻⠿⣿⠿⢿⠛⠵⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣶⠞⠀⢠⣿⣿⣷⡀⠀⠀⠙⠻⣿⣿",
      "⣿⣿⣿⣿⣿⣿⡿⣫⣾⠟⠋⠉⣹⣿⣿⢟⡴⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡼⠋⠀⢀⣾⣿⣿⣿⣿⣆⠀⠀⠀⠈⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ N E O V I M ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("<leader> ee", "  > Toggle file tree", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("<leader> ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("<leader> fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("<leader> qq", "  > Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
