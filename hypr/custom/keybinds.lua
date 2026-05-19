-- This file will not be overwritten across dots-hyprland updates.
-- The file name is for the sake of organization and does not matter
-- See the corresponding files in ~/.config/hypr/hyprland for examples

-- Note : SUPER+E est géré via custom/variables.lua (surcharge de fileManager)

-- ##! Custom
hl.bind("SUPER + F1", hl.dsp.global("quickshell:cheatsheetToggle"), { description = "Toggle cheatsheet" })
hl.bind("SUPER + SHIFT + Q", hl.dsp.window.close(), { description = "Window: Close" })
hl.bind("ALT + SHIFT + E", hl.dsp.global("quickshell:overviewEmojiToggle"), { description = "Emoji >> clipboard" })

for i = 1, 10 do
    local numberkey = { 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 }
    hl.bind("SUPER + SHIFT + code:" .. numberkey[i], function()
        hl.dispatch(hl.dsp.window.move({ workspace = workspace_in_group(i), follow = true }))
    end)
end

-- ##! Group
hl.bind("SUPER + SHIFT + G", hl.dsp.group.toggle(), { description = "Toggle group" })
hl.bind("SUPER + SHIFT + I", hl.dsp.group.lock_active({ action = "toggle" }), { description = "Lock active group" })

hl.bind("SUPER + Left",  hl.dsp.group.prev(), { description = "Previous window in group" })
hl.bind("SUPER + Right", hl.dsp.group.next(), { description = "Next window in group" })

hl.bind("SUPER + SHIFT + Left",  hl.dsp.group.move_window({ forward = false }), { description = "Move window left in group" })
hl.bind("SUPER + SHIFT + Right", hl.dsp.group.move_window({ forward = true }), { description = "Move window right in group" })

hl.bind("SUPER + ALT + Left",  hl.dsp.window.move({ into_group = "l" }))
hl.bind("SUPER + ALT + Right", hl.dsp.window.move({ into_group = "r" }))
hl.bind("SUPER + ALT + Up",    hl.dsp.window.move({ into_group = "u" }))
hl.bind("SUPER + ALT + Down",  hl.dsp.window.move({ into_group = "d" }))
