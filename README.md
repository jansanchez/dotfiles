# Dotfiles v2 for Jan

Base profesional para Windows + WSL + containers Linux usando:

- chezmoi
- zsh
- starship
- tmux
- Neovim + LazyVim
- mise

## Objetivo

Un único repo para reproducir el mismo entorno en:

- WSL (Ubuntu 24.04 LTS recomendado)
- containers Debian/Ubuntu

## Flujo

1. Instala `chezmoi`
2. Inicializa este repo
3. Aplica la configuración
4. Abre una nueva shell
5. Ejecuta `nvim`

## Instalación rápida

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply <TU_USUARIO>/<TU_REPO>
```

## Cambio de tema

Edita `~/.config/chezmoi/chezmoi.toml`:

```toml
[data]
theme = "tokyonight"
```

Valores sugeridos:

- `tokyonight`
- `catppuccin`

Luego aplica cambios:

```bash
chezmoi apply
```
