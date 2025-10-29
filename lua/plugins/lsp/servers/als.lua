local home_dir = os.getenv("HOME");
local function cli_config_path()
  local default = os.getenv('ARDUINO_CONFIG_FILE')
  if default and default ~= "" then
    return default
  end
  local macos_library = home_dir .. '/Library/Arduino15/arduino-cli.yaml'
  if io.open(macos_library, 'r') ~= nil then
    return macos_library
  end
  local xdg_config_home = home_dir .. '/.config/arduino/arduino-cli.yaml'
  if io.open(xdg_config_home, 'r') ~= nil then
    return xdg_config_home
  end
  return nil
end

local M = {
  cmd = {
    home_dir .. '/.local/share/nvim/mason/bin/arduino-language-server',
    '-cli-config',
    cli_config_path(),
    '-fqbn',
    'arduino:avr:uno'
  },
}

return M
