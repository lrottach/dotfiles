if status is-interactive
    # Commands to run in interactive sessions can go here
    atuin init fish | source

    # Set Starship theme based on macOS appearance
    if defaults read -g AppleInterfaceStyle &>/dev/null
        set -gx STARSHIP_CONFIG ~/.config/starship/starship_dark.toml
        fish_config theme choose dracula_pro_dark
    else
        set -gx STARSHIP_CONFIG ~/.config/starship/starship_light.toml
        fish_config theme choose dracula_pro_alucard
    end

    starship init fish | source
    zoxide init fish | source

    # Show system info
    fastfetch
end

fish_add_path ~/.local/bin
