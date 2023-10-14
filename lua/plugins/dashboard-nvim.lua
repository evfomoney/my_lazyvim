local logo = [[

██╗   ██╗    ██╗    ███╗   ███╗
██║   ██║    ██║    ████╗ ████║
██║   ██║    ██║    ██╔████╔██║
╚██╗ ██╔╝    ██║    ██║╚██╔╝██║
 ╚████╔╝     ██║    ██║ ╚═╝ ██║
  ╚═══╝      ╚═╝    ╚═╝     ╚═╝
                               
]]
return {
  "glepnir/dashboard-nvim",
  opts = {
    config = {
      header = vim.split(logo, "\n"),
    },
  },
}
