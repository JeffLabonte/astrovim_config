return {
  {
    "mfussenegger/nvim-dap-python",
    dependencies = {
      "mfussenegger/nvim-dap",
    }
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "theHamsta/nvim-dap-virtual-text",
      "rcarriga/nvim-dap-ui",
      "mfussenegger/nvim-dap-python",
      "Pocco81/DAPInstall.nvim",
    },
    config = function()
      local dap = require("dap")

      dap.adapters.lldb = {
        type = "executable",
        command = "lldb-vscode",
        name = "lldb",
      }

      local dap_vscode = require("dap.ext.vscode")
      dap_vscode.load_launchjs(nil, { debugpy = { "python" }, lldb = { "rust" } })
    end,
  }
}
