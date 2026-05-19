-- This file will not be overwritten across dots-hyprland updates.
-- The file name is for the sake of organization and does not matter
-- See the corresponding files in ~/.config/hypr/hyprland for examples

local function remap_workspaces()
    hl.exec_cmd("~/.config/hypr/custom/scripts/remap_workspaces.sh")
end

hl.on("hyprland.start", function()
    hl.exec_cmd("firefox")
    hl.exec_cmd("sleep 3 && slack")
    hl.exec_cmd("sleep 3 && ELECTRON_OZONE_PLATFORM_HINT=x11 1password --silent")
    hl.exec_cmd("sleep 3 && QT_QPA_PLATFORM=xcb ~/Applications/kDrive.AppImage")
end)

hl.on("config.reloaded", function()
    remap_workspaces()
end)
