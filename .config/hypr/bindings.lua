-- ============================================================
-- APPLICATION KEYBINDINGS (Omarchy 4.0 Clean Slate)
-- ============================================================

-- Unbind system defaults to clear the deck and prevent hotkey clashes
hl.unbind("SUPER + ALT + SPACE")
hl.unbind("SUPER + CTRL + E")
hl.unbind("SUPER + CTRL + V")
hl.unbind("SUPER + SHIFT + SPACE")
hl.unbind("SUPER + T")
hl.unbind("SUPER + W")
hl.unbind("SUPER + SHIFT + S")

-- Native Emoji Selector (Win + .)
hl.unbind("SUPER + period")
o.bind("SUPER + period", nil, "omarchy-shell shell toggle omarchy.emojis")

-- Native Clipboard History (Win + V)
hl.unbind("SUPER + V")
o.bind("SUPER + V", nil, "omarchy-shell shell toggle omarchy.clipboard")

-- Terminal Configuration
o.bind("SUPER + T", "Terminal", 'uwsm-app -- xdg-terminal-exec --dir="$(omarchy-cmd-terminal-cwd)"')
o.bind("SUPER + ALT + RETURN", "Tmux", 'uwsm-app -- xdg-terminal-exec --dir="$(omarchy-cmd-terminal-cwd)" bash -c "tmux attach || tmux new -s Work"')

-- Web Browser Mappings
o.bind("SUPER + W", "Browser", "omarchy-launch-browser")
o.bind("SUPER + SHIFT + ALT + W", "Browser (private)", "omarchy-launch-browser --private")

-- File Manager & Core Tools
o.bind("SUPER + E", "File manager", "uwsm-app -- nautilus --new-window")
o.bind("SUPER + C", "Editor", "kwrite")

-- Media & Development Utilities
o.bind("SUPER + SHIFT + M", "Music", "omarchy-launch-or-focus spotify")
o.bind("SUPER + SHIFT + ALT + M", "Music TUI", "omarchy-launch-or-focus-tui cliamp")
--o.bind("SUPER + SHIFT + D", "Docker", "omarchy-launch-tui lazydocker")
o.bind("SUPER + SHIFT + G", "Signal", 'omarchy-launch-or-focus ^signal$ "uwsm-app -- signal-desktop"')

-- Productivity & Core Document Launchers
--o.bind("SUPER + SHIFT + O", "Obsidian", 'omarchy-launch-or-focus ^obsidian$ "uwsm-app -- obsidian"')
--o.bind("SUPER + SHIFT + Q", "Typora", "uwsm-app -- typora --enable-wayland-ime")
--o.bind("SUPER + SHIFT + SLASH", "Passwords", "uwsm-app -- 1password")


-- ============================================================
-- WINDOW MANAGEMENT
-- ============================================================

-- Wipe any duplicate runtime bindings
hl.unbind("SUPER + Q")

-- Close Active Window (Safe Reference - No warning flags)
hl.bind("SUPER + Q", hl.dsp.window.close(), { description = "Close window" })

-- Central Omarchy Control Hub Menu
o.bind("SUPER + SHIFT + SPACE", "Omarchy menu", "omarchy-menu")

-- Toggle Window Floating Status
hl.bind("SUPER + ALT + SPACE", hl.dsp.window.float({ action = "toggle" }), { description = "Float window" })


