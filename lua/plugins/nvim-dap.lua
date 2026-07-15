return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "rcarriga/nvim-dap-ui",
    {
      "ownself/nvim-dap-unity",
      -- to make sure install and setup "vscodedebugger" for unity
      build = function()
        require("nvim-dap-unity").install()
      end,
    },
  },

  -- Lazy loading key
  keys = {
    {
      "<F5>",
      function()
        require("dap").continue()
      end,
      desc = "DAP Continue",
      mode = "n",
    },
    {
      "<F8>",
      function()
        require("dapui").toggle()
      end,
      desc = "DAP UI Toggle",
      mode = "n",
    },
    {
      "<F9>",
      function()
        require("dap").toggle_breakpoint()
      end,
      desc = "DAP Toggle Breakpoint",
      mode = "n",
    },
    {
      "<F10>",
      function()
        require("dap").step_over()
      end,
      desc = "DAP Step Over",
      mode = "n",
    },
    {
      "<F11>",
      function()
        require("dap").step_into()
      end,
      desc = "DAP Step Into",
      mode = "n",
    },
    {
      "<F12>",
      function()
        require("dap").step_out()
      end,
      desc = "DAP Step Out",
      mode = "n",
    },
  },
  -- Lazy loading cmd
  cmd = {
    "Dap",
    "DapContinue",
    "DapStepOver",
    "DapStepInto",
    "DapStepOut",
    "DapToggleBreakpoint",
    "DapUI",
    "DapLaunch",
    "DapAttach",
  },

  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    dapui.setup() -- initialize dapui

    require("nvim-dap-unity").setup()

    -- Dap UI
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.after.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.after.event_exited["dapui_config"] = function()
      dapui.close()
    end

    -- Dap keymaps
    vim.keymap.set("n", "<F5>", function()
      dap.continue()
    end)
    vim.keymap.set("n", "<F8>", function()
      dapui.toggle()
    end)
    vim.keymap.set("n", "<F9>", function()
      dap.toggle_breakpoint()
    end)
    vim.keymap.set("n", "<F10>", function()
      dap.step_over()
    end)
    vim.keymap.set("n", "<F11>", function()
      dap.step_into()
    end)
    vim.keymap.set("n", "<F12>", function()
      dap.step_out()
    end)
  end,
}

