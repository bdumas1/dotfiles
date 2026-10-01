-- This file will not be overwritten across dots-hyprland updates.
-- The file name is for the sake of organization and does not matter
-- See the corresponding files in ~/.config/hypr/hyprland for examples

hl.window_rule({ match = { class = "^(code)$" }, workspace = "1" })
hl.window_rule({ match = { class = "^(jetbrains-idea)$" }, workspace = "1" })
hl.window_rule({ match = { class = "^(firefox)$" }, workspace = "2" })
hl.window_rule({ match = { class = "^(slack)$" }, workspace = "3", group = "set" })
hl.window_rule({ match = { class = "^(teams-for-linux)$" }, workspace = "3", group = "set" })

hl.window_rule({
    match = {
        class = "^(org\\.gnome\\.Calculator)$"
    },
    float = true
})
