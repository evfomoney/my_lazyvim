local logo = [[



██╗   ██╗    ██╗    ███╗   ███╗
██║   ██║    ██║    ████╗ ████║
██║   ██║    ██║    ██╔████╔██║
╚██╗ ██╔╝    ██║    ██║╚██╔╝██║
 ╚████╔╝     ██║    ██║ ╚═╝ ██║
  ╚═══╝      ╚═╝    ╚═╝     ╚═╝
                               


]]
return {
  "nvimdev/dashboard-nvim",
  opts = {
    config = {
      header = vim.split(logo, "\n"),
    },
  },
}
