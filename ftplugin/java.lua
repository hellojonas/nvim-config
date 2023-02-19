local jdtls_ok, _ = pcall(require, "jdtls")
if not jdtls_ok then
  vim.notify "JDTLS not found, install with `:MasonInstall jdtls`"
  return
end

local jdtls_path = vim.fn.stdpath('data') .. "/mason/packages/jdtls/bin/jdtls"
local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }
local root_dir = require("jdtls.setup").find_root(root_markers)

if root_dir == "" then
  return
end

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = vim.fn.stdpath('data') .. '/site/java/workspace/' .. project_name
os.execute("mkdir " .. workspace_dir)

local function on_attach(client, bufnr)
  require('user.lsp').on_attach(client, bufnr)
  require('jdtls.setup').add_commands()
end

local extendedClientCapabilities = require('jdtls').extendedClientCapabilities
extendedClientCapabilities.resolveAdditionalTextEditsSupport = true

local config = {
  cmd = {
    jdtls_path,
    '-data', workspace_dir,
  },
  root_dir = root_dir,
  init_options = {
    extendedClientCapabilities = extendedClientCapabilities,
  },
  on_attach = on_attach,
}

config.settings = {
  java = {
    configuration = {
      runtimes = {
        {
          name = "JavaSE-1.8",
          path = "/usr/lib/jvm/java-8-openjdk/",
        },
        {
          name = "JavaSE-17",
          path = "/usr/lib/jvm/java-17-openjdk/",
        },
      }
    }
  },
  capabilities = require('user.lsp').capabilities(),
}

require('jdtls').start_or_attach(config)
