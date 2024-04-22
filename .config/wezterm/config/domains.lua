return {
   -- ref: https://wezfurlong.org/wezterm/config/lua/SshDomain.html
   ssh_domains = {},

   -- ref: https://wezfurlong.org/wezterm/multiplexing.html#unix-domains
   unix_domains = {},

   -- ref: https://wezfurlong.org/wezterm/config/lua/WslDomain.html
   wsl_domains = {
      -- {
      --    name = 'WSL:Ubuntu',
      --    distribution = 'Ubuntu',
      --    username = 'kevin',
      --    default_cwd = '/home/kevin',
      --    default_prog = { 'fish', '-l' },
      -- },
      {
         name = 'WSL:Ubuntu',
         distribution = 'Ubuntu',
         username = 'cam',
         default_cwd = '/home/cam',
         default_prog = { 'zsh', '-l' },
      },
      {
         name = 'WSL:Arch',
         distribution = 'Arch',
         username = 'cam',
         default_cwd = '/home/cam',
         default_prog = { 'zsh', '-l' },
      },
   },
}
