-- TODO TOC


--################
--### MONITORS ###
--################

-- Primary monitor (center)
hl.monitor({
    output   = "DP-2",
    mode     = "2560x1440@240",
    -- mode = "preferred",
    position = "0x0",
    scale    = 1,
})

hl.config({
    misc = {
        vrr = 0,
    },
})


-- TV 
-- hl.monitor({
--     output   = "HDMI-A-1",
--     mode     = "disable",
--     position = "auto",
--     scale    = 1,
-- })

hl.plugin = {
    xwaylandprimary = {
        display = "DP-1"
    }
}

--###############
--### ENVVARS ###
--###############

local terminal      = "kitty"
local clipboard     = "kitty -o confirm_os_window_close=0"
local fileManager   = "thunar"
local menu          = "wofi --show drun -W 40%"
local browser       = "brave --password-store=basic --ozone-platform=wayland"
local hyprshot      = "hyprshot -m region --clipboard-only --freeze --silent"
local hyprshotTimed = "hyprshot -m region --clipboard-only"
local wvkbd         = "wvkbd-en-ru --landscape-layers full,cyrillic --hidden"
local v2rayN        = "/opt/v2rayn-bin/v2rayN"

hl.env("XCURSOR_SIZE", 20)
hl.env("HYPRCURSOR_SIZE", 20)
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")

--####################
--## LOOK AND FEEL ###
--####################

-- hl.layout.register("grid", {
--     recalculate = function(ctx)
--         local n = #ctx.targets
--         if n == 0 then
--             return
--         end
--
--         local cols = math.ceil(math.sqrt(n))
--
--         for i, target in ipairs(ctx.targets) do
--             target:place(ctx:grid_cell(i, cols))
--         end
--     end,
-- })

-- not animated
hl.config({
    general = {
        gaps_in = 0,
        gaps_out = 0,
        border_size = 2,
        resize_on_border = false,
        allow_tearing = false,
        layout = "dwindle",
        col = {
            active_border = { 
              colors = { 
                "rgba(ffffffee)", "rgba(000000ee)" }, angle = 45 
              },
            inactive_border = "rgba(595959aa)",
        },
    },
    dwindle = {
        force_split = 0,
        smart_split = true,
    },
    decoration = {
        rounding = 0,
        rounding_power = 2,
        active_opacity = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },

        blur = {
            enabled = false,
            size = 3,
            passes = 1,
            vibrancy = 0.1696,
        },
    },
})

-- Default curves and animations, 
-- see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("easeOutQuint", {
  type = "bezier", points = {{0.23, 1}, {0.32, 1}}
})

hl.curve("easeInOutCubic", {
  type = "bezier", points = { {0.65, 0.05}, {0.36, 1}} 
})

hl.curve("linear", { 
  type = "bezier", points = { {0, 0}, {1, 1}} 
})

hl.curve("almostLinear", { 
  type = "bezier", points = { {0.5, 0.5}, {0.75, 1}}
})

hl.curve("quick", { 
  type = "bezier", points = { {0.15, 0}, {0.1, 1}} 
})

-- Default springs
hl.curve("easy",{ 
  type = "spring", mass = 1, stiffness = 238.1191, dampening = 24.21279333 
})

hl.animation({ 
  leaf = "global", enabled = true, speed = 10, bezier = "default" 
})

hl.animation({ 
  leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" 
})

hl.animation({ 
  leaf = "windows", enabled = true, speed = 4.79, spring = "easy" 
})

hl.animation({ 
  leaf = "windowsIn",
  enabled = true,
  speed = 4.1,
  spring = "easy",
  style = "popin 87%" 
})

hl.animation({ 
  leaf = "windowsOut", 
  enabled = true,
  speed = 1.49, 
  bezier = "linear",       
  style = "popin 87%"
})

hl.animation({ 
  leaf = "fadeIn",        
  enabled = true,  
  speed = 1.73, 
  bezier = "almostLinear"
})

hl.animation({ 
  leaf = "fadeOut",       
  enabled = true,  
  speed = 1.46, 
  bezier = "almostLinear" 
})

hl.animation({ 
  leaf = "fade",
  enabled = true,
  speed = 3.03,
  bezier = "quick" })

hl.animation({ 
  leaf = "layers",
  enabled = true,
  speed = 3.81,
  bezier = "easeOutQuint" })

hl.animation({ 
  leaf = "layersIn",
  enabled = true,
  speed = 4,
  bezier = "easeOutQuint",
  style = "fade" 
})

 hl.animation({ 
  leaf = "layersOut",
  enabled = true,
  speed = 1.5,
  bezier = "linear",
  style = "fade" 
})

hl.animation({ 
  leaf = "fadeLayersIn",
  enabled = true,
  speed = 1.79,
  bezier = "almostLinear" 
})

hl.animation({ 
  leaf = "fadeLayersOut",
  enabled = true,
  speed = 1.39,
  bezier = "almostLinear" 
})

hl.animation({ 
  leaf = "workspaces",
  enabled = true,
  speed = 1.94,
  bezier = "almostLinear",
  style = "fade" 
})
hl.animation({ 
  leaf = "workspacesIn",
  enabled = true,
  speed = 1.21,
  bezier = "almostLinear",
  style = "fade" 
})

hl.animation({ 
  leaf = "workspacesOut",
  enabled = true,
  speed = 1.94,
  bezier = "almostLinear",
  style = "fade" 
})

hl.animation({ 
  leaf = "zoomFactor",
  enabled = true,
  speed = 7,
  bezier = "quick"
})


-- misc
hl.config({
    animations = {
        enabled = true,
    },
    dwindle = {
        preserve_split = true,
    },
    master = {
        new_status = "master",
    },
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
    },
})

--####################
--### MOUSE AND KB ###
--####################

hl.config({
    input = {
        kb_layout = "us,ru",
        kb_options = "grp:alt_shift_toggle",
        follow_mouse = 1,
        left_handed = false,
        -- -1.0 - 1.0, 0 means no modification.
        sensitivity = -0.6,
        -- sensitivity = 0.0,
        accel_profile = "flat",
        -- force_no_accel = true,
        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.config({
    cursor = {
        inactive_timeout = 3,
    },
})
--
-- hl.config({
--     misc = {
--         middle_click_paste = false,
--     },
-- })
--

--###############
--## KEYBINDS ###
--###############

local mainMod = "SUPER"
local clipboardPath = "~/.local/bin/clip-image-to-file"

hl.bind(mainMod .. " + " .. "C", hl.dsp.window.close())
hl.bind(mainMod .. " + " .. "V", hl.dsp.window.float())
hl.bind(mainMod .. " + " .. "F", hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + " .. "Q", hl.dsp.exec_cmd("kitty"))
-- hl.bind(mainMod .. " + " .. "S", hl.dsp.exec_cmd("pkill -RTMIN wvkbd-en-ru"))
hl.bind(mainMod .. " + " .. "B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + " .. "E", hl.dsp.exec_cmd("thunar"))
hl.bind(mainMod .. " + " .. "R", hl.dsp.exec_cmd("wofi --show drun -W 40%"))
hl.bind(mainMod .. " + " .. "X", hl.dsp.exec_cmd(
  "hyprshot -m region --clipboard-only --freeze --silent"
))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "V", 
  hl.dsp.exec_cmd(clipboardPath)
)

-- Vim motions for moving single window
-- hl.bind(mainMod .. " + " .. "K", { direction = "u" })
-- hl.bind(mainMod .. " + " .. "J", { direction = "d" })
-- hl.bind(mainMod .. " + " .. "H", { direction = "l" })
-- hl.bind(mainMod .. " + " .. "L", { direction = "r" })

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + " .. "left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + " .. "right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + " .. "up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + " .. "down", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
hl.bind(mainMod .. " + " .. 1, hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + " .. 2, hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + " .. 3, hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + " .. 4, hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + " .. 5, hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + " .. 6, hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + " .. 7, hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + " .. 8, hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + " .. 9, hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + " .. 0, hl.dsp.focus({ workspace = 10 }))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 1, hl.dsp.window.move({workspace = 1}))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 2, hl.dsp.window.move({workspace = 2}))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 3, hl.dsp.window.move({workspace = 3}))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 4, hl.dsp.window.move({workspace = 4}))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 5, hl.dsp.window.move({workspace = 5}))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 6, hl.dsp.window.move({workspace = 6}))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 7, hl.dsp.window.move({workspace = 7}))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 8, hl.dsp.window.move({workspace = 8}))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 9, hl.dsp.window.move({workspace = 9}))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 0, hl.dsp.window.move({workspace = 10}))
hl.bind(mainMod .. " + " .. "F11", hl.dsp.exec_cmd("~/.local/bin/steam-tv"))
hl.bind(mainMod .. " + " .. "F12", hl.dsp.exec_cmd("~/.local/bin/steam-de"))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + " .. "mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + " .. "mouse:273", hl.dsp.window.resize(), { mouse = true })

--#############################
--## WINDOWS AND WORKSPACES ###
--#############################

hl.window_rule({
    name  = "brave",
    match = {
        class = "brave-browser|brave",
    },
    workspace = "1 silent",
    monitor = "DP-1",
})

local telegram_rules = {
    {
        name = "telegram0",
        match = {
            class = "org.telegram.desktop|telegramdesktop",
        },
        monitor = "DP-1",
        workspace = "2 silent",
    },
    {
        name = "telegram1",
        match = {
            class = "org.telegram.desktop|telegramdesktop|telegram",
        },
        monitor = "DP-1",
    },
    {
        name = "telegram2",
        match = {
            class = "org.telegram.desktop|telegramdesktop",
            title = "^Media viewer$",
        },
        monitor = "DP-1",
        float = true,
    },
    {
      name  = "no_share_tg",
      match = {
        class = "org.telegram.desktop",
      },
      no_screen_share = true,
    }
}
for _, rule in ipairs(telegram_rules) do
    hl.window_rule(rule)
end

local steam_rules = {
  {
    name  = "steamUpdater",
    match = {
        title = "Steam",
        initial_title = "Steam",
    },
    monitor = "DP-1",
    workspace = "10 silent",
  },
  {
    name  = "steamTVGame",
    match = {
        class = "^steam_app_\\d+$",
    },
    fullscreen = true,
    workspace = "9 silent",
  },
  {
    name  = "steamTVDE",
    match = {
        class = "^(steam)$",
    },
    fullscreen = true,
    workspace = "10 silent",
  },
}

for _, rule in ipairs(steam_rules) do
    hl.window_rule(rule)
end

-- RULE FOR TV
-- hl.workspace_rule({
--     workspace = 7,
--     monitor = "HDMI-A-1",
--     border_size = 0,
--     -- decoration.rounding = 0,
--     -- rounding = 0
-- })

hl.window_rule({
    name  = "v2rayN",
    match = {
        class = "v2rayN",
    },
    monitor = "DP-1",
    workspace = "8 silent",
})

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Wofi windowrule
hl.window_rule({
    name  = "wofi",
    match = {
        class = "wofi",
    },
    stay_focused = true,
})

hl.window_rule({
    name  = "element-desktop",
    match = {
        class = "element-desktop",
    },
    no_screen_share = true,
    workspace = 2,
})

hl.window_rule({
    name  = "strawberry",
    match = {
        class = "strawberry",
    },
    workspace = 6,
})

hl.window_rule({
    name  = "nicotine",
    match = {
        class = "nicotine",
    },
    workspace = 8,
})

hl.window_rule({
    name  = "qbittorrent",
    match = {
        class = "qbittorrent",
    },
    workspace = 8,
})

-- hl.layer_rule({
--     match = {
--         namespace = "no_anim on",
--     },
--     match:namespace = "selection",
-- })

--################
--## AUTOSTART ###
--################

hl.on("hyprland.start", function ()
    hl.exec_cmd("waybar")
    hl.exec_cmd("hyprpaper") 
    hl.exec_cmd("wvkbd-en-ru --landscape-layers full,cyrillic --hidden")
    hl.exec_cmd("swaync")
    hl.exec_cmd("swaync-client -d")
    hl.exec_cmd("systemctl --user start clip-image-namer.service")

    hl.exec_cmd("steam", { workspace = "10 silent" })
    hl.exec_cmd(browser, { workspace = "1 silent" })
    hl.exec_cmd("element-desktop", { workspace = "2 silent" })
    hl.exec_cmd("Telegram", {
      workspace = "2 silent",
      -- resize({"monitor_w * 0.25", "monitor_h" })
    })
    hl.exec_cmd("strawberry", { workspace = "6 silent" })

    hl.exec_cmd("nicotine", { workspace = "8 silent" })
    hl.exec_cmd("qbittorrent", { workspace = "8 silent" })
end)
