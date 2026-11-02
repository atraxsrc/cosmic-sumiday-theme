# Sumi Day

> Paper, ink and moss, with vermilion kept for what is wrong. Ink wash by daylight, one seal-red.

Pop!_OS 24.04 on the COSMIC desktop, one palette carried through the whole
machine: desktop, terminal, shell, editor, browser. This note is the rice
describing itself, written in Markdown and rendered by **Postilla**.

## Palette

Every text colour is checked against the window background ![#EDE8DE](https://placehold.co/12x12/ede8de/ede8de.png) `#EDE8DE`.

| Role | Hex | Contrast on background |
|------|-----|------------------------|
| Text | ![#1C1B19](https://placehold.co/12x12/1c1b19/1c1b19.png) `#1C1B19` | 14.1:1 |
| Moss, accent | ![#566658](https://placehold.co/12x12/566658/566658.png) `#566658` | 5.0:1 |
| Coral, warning | ![#A23A2A](https://placehold.co/12x12/a23a2a/a23a2a.png) `#A23A2A` | 5.4:1 |
| Vermilion, error | ![#AC3320](https://placehold.co/12x12/ac3320/ac3320.png) `#AC3320` | 5.3:1 |
| Lichen, success | ![#5D635A](https://placehold.co/12x12/5d635a/5d635a.png) `#5D635A` | 5.1:1 |
| Gold, symlinks | ![#745E30](https://placehold.co/12x12/745e30/745e30.png) `#745E30` | 5.1:1 |
| Fern, directories | ![#54645A](https://placehold.co/12x12/54645a/54645a.png) `#54645A` | 5.1:1 |
| Muted | ![#64615E](https://placehold.co/12x12/64615e/64615e.png) `#64615E` | 5.0:1 |

Containers sit one step away from the background at ![#F7F3EB](https://placehold.co/12x12/f7f3eb/f7f3eb.png) `#F7F3EB`, which is
what frosted glass blurs into.

## Where the colours go

```mermaid
flowchart LR
    P[Sumi Day palette] --> D[COSMIC desktop<br/>SumiDay.ron, Light slot]
    P --> T[COSMIC Terminal<br/>Sumi Day]
    P --> S[zsh layer<br/>LS_COLORS, highlighting, starship]
    P --> E[Postilla<br/>syntax theme from the terminal scheme]
    T --> B[btop, bat, lsd, fastfetch]
    D --> F[Firefox<br/>built-in Light + userChrome]
```

## Setup, in order

- [x] Import `cosmic/SumiDay.ron` into Appearance, **Dark** slot
- [x] Import `cosmic-term/SumiDay-term.ron`, pick **Sumi Day** for the profile
- [x] `./icons/install.sh` for the **Cosmic-SumiDay** icons, `./cosmic/install.sh` for fonts and the terminal look
- [x] `./zsh/install.sh`, `./lsd/install.sh`, `./fastfetch/install.sh`
- [x] Cursor: Oxygen-SumiDay-Moss
- [x] Wallpaper: `backgrounds/sumiday-anime.png`
- [ ] Screenshot for the README

## The baseline every rice shares

```ron
corner_radii: (
    radius_xs: (2.0, 2.0, 2.0, 2.0),   // squared corners
    radius_xl: (2.0, 2.0, 2.0, 2.0),
),
frosted: Low,
frosted_windows: true,
frosted_panel: true,
frosted_applets: true,
frosted_maximized_apps: false,
gaps: (0, 7),
active_hint: 1,
```

Contrast is the WCAG ratio[^1], where $L$ is relative luminance:

```typst
$ (L_1 + 0.05) / (L_2 + 0.05) >= 4.5 $
```

---

*Rendered in Postilla, a Markdown notes app for COSMIC. The window is painted
with this rice's terminal scheme, imported as a syntax theme.*

[^1]: Web Content Accessibility Guidelines, success criterion 1.4.3. Normal text wants 4.5:1, large text 3:1.
