if status is-interactive
    # Commands to run in interactive sessions can go here
    atuin init fish | source

    # --- macOS light/dark appearance --------------------------------------
    # Keep Fish's syntax-highlighting theme and Starship's config in sync with
    # the system appearance, including LIVE changes while this shell is open.
    # Ghostty follows the OS on its own via `theme = dark:...,light:...`.
    #
    # macOS reports appearance via the global `AppleInterfaceStyle` default:
    # "Dark" in dark mode, ABSENT in light mode. We re-check once per prompt
    # (~10ms) and only re-apply the theme when it actually changes.

    function __appearance_mode --description 'Echo current macOS appearance (dark|light)'
        if defaults read -g AppleInterfaceStyle &>/dev/null
            echo dark
        else
            echo light
        end
    end

    function __appearance_apply --description 'Apply Fish theme + Starship config for the given appearance'
        switch "$argv[1]"
            case dark
                set -gx STARSHIP_CONFIG ~/.config/starship/starship_dark.toml
                fish_config theme choose dracula_pro_dark
            case light
                set -gx STARSHIP_CONFIG ~/.config/starship/starship_light.toml
                fish_config theme choose dracula_pro_alucard
        end
        set -g __appearance_current "$argv[1]"
    end

    function __appearance_sync --on-event fish_prompt --description 'Re-apply theme when macOS appearance changes'
        set -l mode (__appearance_mode)
        test "$mode" = "$__appearance_current"
        and return
        __appearance_apply "$mode"
    end

    # Apply once now so STARSHIP_CONFIG is exported before `starship init`.
    __appearance_apply (__appearance_mode)
    # -----------------------------------------------------------------------

    starship init fish | source
    zoxide init fish | source

    # Show system info
    fastfetch
end

fish_add_path ~/.local/bin
