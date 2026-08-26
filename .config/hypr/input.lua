-- =========================================================================
-- 1. WINDOW ROUTING & OVERRIDES (Reguły Okien)
-- =========================================================================
o.window("qemu", { workspace = "5" })

-- Konfiguracja czułości przewijania terminali (Oryginalne windowrule z pliku)
o.window("(Alacritty|kitty|foot)", { scroll_touchpad = 1.5 })
o.window("com.mitchellh.ghostty", { scroll_touchpad = 0.2 })

-- =========================================================================
-- 2. MAIN CONFIGURATION BLOCK (Główna konfiguracja środowiska)
-- =========================================================================
hl.config({
    -- Twoja konfiguracja podziału okien Dwindle
    dwindle = {
        force_split = 0,       -- Automatyczne przełączanie pion/poziom
        preserve_split = false -- Wyłączone wymuszanie stałego podziału okna
    },

    -- Twoje spersonalizowane ustawienia wejściowe (Input Devices)
    input = {
        kb_layout = "pl",
        kb_options = "compose:caps",
        follow_mouse = 1,
        repeat_rate = 40,
        repeat_delay = 250,
        numlock_by_default = true,
        
        touchpad = {
            clickfinger_behavior = true,
            scroll_factor = 0.4
        }
    },

    -- Konfiguracja Kursora (Zapobiega znikaniu kursora podczas pisania)
    cursor = {
        hide_on_key_press = false
    }
})

-- =========================================================================
-- 3. CURSOR MECHANICS (Konfiguracja Kursora Bibata)
-- =========================================================================
hl.env("XCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("HYPRCURSOR_SIZE", "24")

-- Wymuszenie załadowania wyglądu kursora podczas startu kompozytora
hl.on("hyprland.start", function()
    hl.exec("hyprctl setcursor Bibata-Modern-Classic 24")
end)
