return {
  {
    "mfussenegger/nvim-dap-python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "Joakker/lua-json5",
    },
    config = function()
      local dap_vscode = require("dap.ext.vscode")
      dap_vscode.json_decode = require("json5").parse
      dap_vscode.load_launchjs(nil, { debugpy = { "python" }, lldb = { "rust" } })
    end,
  },
  {
    'Joakker/lua-json5',
    run = './install.sh'
  }
}
