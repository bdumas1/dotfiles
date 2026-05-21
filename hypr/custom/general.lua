-- =============================================================================
-- WINDOW RULES
-- =============================================================================

hl.window_rule({ match = { class = "^(code)$" },            workspace = "1" })
hl.window_rule({ match = { class = "^(jetbrains-idea)$" },  workspace = "1" })
hl.window_rule({ match = { class = "^(firefox)$" },         workspace = "2" })
hl.window_rule({ match = { class = "^(slack)$" },           workspace = "3" })
hl.window_rule({ match = { class = "^(teams-for-linux)$" }, workspace = "3" })

-- =============================================================================
-- GENERAL
-- =============================================================================

hl.config({
    general = {
        gaps_in = 0,
        gaps_out = 0,
        gaps_workspaces = 50,
        border_size = 1,
        col = {
            active_border = "rgba(C7BFFFFF)",
            inactive_border = "rgba(313136FF)"
        },
        resize_on_border = true,
        no_focus_fallback = true,
        allow_tearing = true,
        snap = {
            enabled = true,
            window_gap = 4,
            monitor_gap = 5,
            respect_gaps = true
        }
    },

    -- =============================================================================
    -- DECORATION
    -- =============================================================================

    decoration = {
        rounding = 0
    },

    -- =============================================================================
    -- INPUT
    -- =============================================================================

    input = {
        kb_layout = "fr",
        -- kb_options = "caps:escape_shifted_capslock",
        follow_mouse = 2,
        float_switch_override_focus = 0
    },

    -- =============================================================================
    -- DWINDLE
    -- =============================================================================

    dwindle = {
        force_split = 2
    },
})

-- =============================================================================
-- ANIMATIONS
-- =============================================================================

hl.config({
    animations = {
        enabled = true
    }
})

hl.animation({ leaf = "windows",     enabled = true, speed = 3, bezier = "default" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 3, bezier = "default", style = "popin 80%" })
hl.animation({ leaf = "windowsIn",   enabled = true, speed = 3, bezier = "default", style = "popin 80%" })
hl.animation({ leaf = "border",      enabled = true, speed = 3, bezier = "default" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 3, bezier = "default" })
hl.animation({ leaf = "fade",        enabled = false, speed = 3, bezier = "default" })
hl.animation({ leaf = "workspaces",  enabled = true, speed = 2, bezier = "default", style = "slidefade 10%" })

-- =============================================================================
-- GROUPS
-- =============================================================================

hl.config({
    group = {
        col = {
            border_active          = "rgba(C7BFFFFF)",
            border_locked_active   = "rgba(0DB7D4F2)",
            border_locked_inactive = "rgba(16151AF2)"
        },
        groupbar = {
            height       = 19,
            font_size    = 13,
            gradients    = true,
            gaps_in      = 0,
            gaps_out     = 0,
            col = {
                active          = "rgba(C7BFFFFF)",
                inactive        = "rgba(16151AFF)",
                locked_active   = "rgba(C7BFFFF2)",
                locked_inactive = "rgba(16151AF2)"
            },
            text_color          = "rgba(000000FF)",
            text_color_inactive = "rgba(E5E1E9FF)"
        }
    }
})