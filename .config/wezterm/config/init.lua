local wezterm = require('wezterm')

---@class Config
---@field options table
local Config = {}
Config.__index = Config

---Initialize Config
---@return Config
function Config:init()
   local config = setmetatable({ options = {} }, self)
   return config
end

---Append to `Config.options`
---@param new_options table new options to append
---@return Config
function Config:append(new_options)
   for k, v in pairs(new_options) do
      if self.options[k] ~= nil then
         wezterm.log_warn(
            'Duplicate config option detected: ',
            { old = self.options[k], new = new_options[k] }
         )
         goto continue
      end
      self.options[k] = v
      ::continue::
   end
   return self
end

-- Add man color settings
-- 设置 LESS_TERMCAP_* 环境变量来配置 man 页面的颜色高亮
wezterm.on_spawn = function(_, cfg)
   cfg.env = cfg.env or {}
   cfg.env["LESS_TERMCAP_mb"] = "\027[01;31m" -- 开始粗体（红色）
   cfg.env["LESS_TERMCAP_md"] = "\027[01;31m" -- 开始粗体（红色）
   cfg.env["LESS_TERMCAP_me"] = "\027[0m"     -- 结束粗体
   cfg.env["LESS_TERMCAP_se"] = "\027[0m"     -- 结束下划线
   cfg.env["LESS_TERMCAP_so"] = "\027[01;44;33m" -- 开始下划线（蓝底黄字）
   cfg.env["LESS_TERMCAP_ue"] = "\027[0m"     -- 结束下划线
   cfg.env["LESS_TERMCAP_us"] = "\027[01;32m" -- 开始下划线（绿色）
end

return Config
