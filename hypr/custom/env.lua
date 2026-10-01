-- This file will not be overwritten across dots-hyprland updates.
-- The file name is for the sake of organization and does not matter
-- See the corresponding files in ~/.config/hypr/hyprland for examples

-- hyprland/env.lua préfixe XDG_DATA_DIRS à chaque reload : la variable grossit
-- indéfiniment et ralentit le lancement des apps GTK (Nautilus...). On dédoublonne.
local seen, dirs = {}, {}
for dir in (os.getenv("XDG_DATA_DIRS") or ""):gmatch("[^:]+") do
    if not seen[dir] then
        seen[dir] = true
        table.insert(dirs, dir)
    end
end
hl.env("XDG_DATA_DIRS", table.concat(dirs, ":"))
