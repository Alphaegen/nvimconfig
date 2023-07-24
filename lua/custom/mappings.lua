local M = {}

-- Load dap specific mappings
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
      end,
      "Continue or start debugging"
    },
    ["<leader>dt"] = {
      function()
        require("dap").terminate()
      end,
      "Terminate the debug session"
    },
    ["<F1>"] = {
      function()
        require("dap").step_into()
      end,
      "Step into"
    },
    ["<F2>"] = {
      function()
        require("dap").step_over()
      end,
      "Step over"
    },
    ["<F3>"] = {
      function()
        require("dap").step_out()
      end,
      "Step out"
    },
  }
}

-- Load dap-go specific mappings
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

-- Load dap-ui specific mappings
M.dap_ui = {
  plugin = true,
  n = {
    ["<leader>dui"] = {
      function()
        require("dapui").toggle()
      end,
      "Toggle debugging ui"
    },
  }
}

M.custom = {
  n = {
    ["<leader>i"] = {
      "<cmd>TroubleToggle<cr>",
      "Toggle issues" ,
      opts = { silent = true, noremap = true}
    },
  }
}

return M
