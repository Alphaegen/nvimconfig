local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dc"] = {
      function()
        require("dap").continue()
      end
    },
    ["<F1>"] = {
      function()
        require("dap").step_into()
      end
    },
    ["<F2>"] = {
      function()
        require("dap").step_out()
      end
    },
    ["<F3>"] = {
      function()
        require("dap").step_over()
      end
    },
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require("dap-go").debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require("dap-go").debug_last()
      end,
      "Debug last go test"
    },
  }
}

M.dap_ui = {
  plugin = true,
  n = {
    ["<leader>dui"] = {
      function()
        require("dapui").toggle()
      end
    },
  }
}

return M
