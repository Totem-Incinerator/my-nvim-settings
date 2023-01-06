local g = vim.g

-- Validar si esta abierto NoVide
if g.neovide then
  g.guifont = "Consolas"
  g.neovide_scroll_animation_length = 0
  g.neovide_cursor_animation_length= 0
  g.neovide_cursor_trail_size = 0
  g.neovide_cursor_vfx_opacity = 0
  g.neovide_cursor_vfx_particle_lifetime = 0
  g.neovide_cursor_vfx_particle_density = 0
  g.neovide_cursor_vfx_particle_speed = 0
  g.neovide_remember_window_size = true
end
