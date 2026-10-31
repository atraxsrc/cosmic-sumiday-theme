# Cosmic Sumi / Cosmic Sumi Day for Cursor

Colour themes for [Cursor](https://cursor.com) from the COSMIC
[Sumi](https://github.com/atraxsrc/cosmic-sumi-theme) rice and its light half
[Sumi Day](https://github.com/atraxsrc/cosmic-sumiday-theme): **Cosmic Sumi** and **Cosmic Sumi Day** in one
extension. It is a plain VS Code theme extension, so VS Code and VSCodium
take it too. The same extension ships in both repos.

## Install

```bash
./vscode/install.sh                # Cursor
./vscode/install.sh code codium    # VS Code / VSCodium instead
```

It packs this folder into `vscode/cosmic-sumi-theme-<version>.vsix` and installs
that with the editor's CLI (`cursor --install-extension`), so the theme is
listed under Extensions and running the script again updates it. Then press
<kbd>Ctrl</kbd>+<kbd>K</kbd> <kbd>Ctrl</kbd>+<kbd>T</kbd> and pick **Cosmic Sumi** or **Cosmic Sumi Day**.

No CLI on the PATH (an AppImage, say): the script still builds the `.vsix`;
install it from Extensions → `...` → **Install from VSIX**.

## Follow COSMIC's Dark / Light toggle

COSMIC tells apps which mode is on through its desktop portal. With these
lines in Cursor's `settings.json` (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd> →
**Preferences: Open User Settings (JSON)**), Cursor switches between the two
themes along with the desktop:

```jsonc
"window.autoDetectColorScheme": true,
"workbench.preferredDarkColorTheme": "Cosmic Sumi",
"workbench.preferredLightColorTheme": "Cosmic Sumi Day"
```

## What it colours

Code is coloured the way Neovim is in the rice (`nvim/colors/*.lua`):

| Role | Sumi | Sumi Day |
|------|---|---|
| Keywords, tags | ![#8B9388](https://placehold.co/12x12/8b9388/8b9388.png) `#8B9388` | ![#566658](https://placehold.co/12x12/566658/566658.png) `#566658` |
| Functions, tag attributes | ![#C2A46D](https://placehold.co/12x12/c2a46d/c2a46d.png) `#C2A46D` | ![#745E30](https://placehold.co/12x12/745e30/745e30.png) `#745E30` |
| Strings | ![#9FA89C](https://placehold.co/12x12/9fa89c/9fa89c.png) `#9FA89C` | ![#5D635A](https://placehold.co/12x12/5d635a/5d635a.png) `#5D635A` |
| Numbers, constants | ![#E07969](https://placehold.co/12x12/e07969/e07969.png) `#E07969` | ![#A23A2A](https://placehold.co/12x12/a23a2a/a23a2a.png) `#A23A2A` |
| Types, classes, modules | ![#75897F](https://placehold.co/12x12/75897f/75897f.png) `#75897F` | ![#54645A](https://placehold.co/12x12/54645a/54645a.png) `#54645A` |
| Imports, macros, decorators, escapes, `this` / `self` | ![#A68C5C](https://placehold.co/12x12/a68c5c/a68c5c.png) `#A68C5C` | ![#765F35](https://placehold.co/12x12/765f35/765f35.png) `#765F35` |
| Parameters (italic) | ![#A19C94](https://placehold.co/12x12/a19c94/a19c94.png) `#A19C94` | ![#656058](https://placehold.co/12x12/656058/656058.png) `#656058` |
| Operators, punctuation | ![#817E77](https://placehold.co/12x12/817e77/817e77.png) `#817E77` | ![#64615E](https://placehold.co/12x12/64615e/64615e.png) `#64615E` |
| Comments (italic) | ![#5F5D58](https://placehold.co/12x12/5f5d58/5f5d58.png) `#5F5D58` | ![#979590](https://placehold.co/12x12/979590/979590.png) `#979590` |
| Accent | ![#8B9388](https://placehold.co/12x12/8b9388/8b9388.png) `#8B9388` | ![#566658](https://placehold.co/12x12/566658/566658.png) `#566658` |
| Errors, deleted, conflicts | ![#DA614E](https://placehold.co/12x12/da614e/da614e.png) `#DA614E` | ![#AC3320](https://placehold.co/12x12/ac3320/ac3320.png) `#AC3320` |

The workbench takes the window colour of the rice's `cosmic/SumiDay.ron` for the
editor, side bars, panel, title and status bar, the container colours for
menus, hovers, inputs and the command palette, and the moss accent for the
active tab line, buttons, badges and the menu highlight. Button hover is the
lighter moss ![#48554A](https://placehold.co/12x12/48554a/48554a.png) `#48554A`. The integrated terminal uses the rice's COSMIC
Terminal scheme (`cosmic-term/`), so command output looks the same as in
COSMIC Terminal.

Cursor's own panels (Agent, chat, inline diffs) have no colour keys of their
own. Cursor builds them from standard ones, and the theme sets those: the
button colour is the agent's accent, the side bar and panel colours are its
surfaces, the diff colours are its accept / reject highlights, and the
terminal's `blue` slot colours its links.

## Contrast

Text is at least 4.5:1 on the window background and on menus and hovers,
comments and line numbers at least 3:1, in both halves.

- **Sumi**: Moss ![#8B9388](https://placehold.co/12x12/8b9388/8b9388.png)
  `#8B9388` is 6.4:1 on the window background and 6.0:1 on the container colour
  ![#111111](https://placehold.co/12x12/111111/111111.png) `#111111`, so it
  stays the same colour everywhere, the match highlight in the suggest and hover
  widgets included. Keywords on the highlighted current line are 5.3:1; comments
  dip under 3:1 there.
- **Sumi Day**: Moss ![#566658](https://placehold.co/12x12/566658/566658.png)
  `#566658` is 5.0:1 on the window background and 5.5:1 on the container colour
  ![#F7F3EB](https://placehold.co/12x12/f7f3eb/f7f3eb.png) `#F7F3EB`, so it
  stays the same colour everywhere, the match highlight in the suggest and hover
  widgets included. Keywords on the highlighted current line are 4.6:1; comments
  dip under 3:1 there.
