# Firefox - Sumi Day

Firefox chrome matching the COSMIC Sumi Day rice. Ported from the DarkGold
baseline (theme recipe and stylesheets), recoloured for paper and moss.

## Palette

Stylesheets:

| Hex       | Role                      |
|-----------|---------------------------|
| ![#EDE8DE](https://placehold.co/12x12/ede8de/ede8de.png) `#EDE8DE` | Frame, page chrome, text on moss |
| ![#F7F3EB](https://placehold.co/12x12/f7f3eb/f7f3eb.png) `#F7F3EB` | Panels, menus             |
| ![#DDDCD3](https://placehold.co/12x12/dddcd3/dddcd3.png) `#DDDCD3` | Menu hover row (moss tinted into the panel) |
| ![#D0D1C8](https://placehold.co/12x12/d0d1c8/d0d1c8.png) `#D0D1C8` | Menu pressed row          |
| ![#D9D2C5](https://placehold.co/12x12/d9d2c5/d9d2c5.png) `#D9D2C5` | Separators, menu border   |
| ![#566658](https://placehold.co/12x12/566658/566658.png) `#566658` | Accent, URL bar border, hover rail |
| ![#48554A](https://placehold.co/12x12/48554a/48554a.png) `#48554A` | Accent hover              |
| ![#5D635A](https://placehold.co/12x12/5d635a/5d635a.png) `#5D635A` | Menu text, new tab active |
| ![#54645A](https://placehold.co/12x12/54645a/54645a.png) `#54645A` | Links                     |
| ![#0E0E0D](https://placehold.co/12x12/0e0e0d/0e0e0d.png) `#0E0E0D` | Hover text                |

## Structure

```
firefox/
├── theme/            WebExtension theme source (Cosmic Sumi Day)
│   ├── manifest.json     DarkGold's 24 colour keys + URL bar ring and selection
│   └── icons/            32 / 48 / 64 / 96 / 128, cropped from sumiday-roar
├── chrome/
│   ├── userChrome.css    browser UI: rounded corners, moss menu hover
│   └── userContent.css   new tab page: moss accents, blank shortcut tiles
└── install.sh            copies chrome/ into the default profile
```

Two layers, use one or both:

1. **Theme (colours):** `theme/` colours the toolbar, tabs, URL bar, menus,
   sidebar and new tab page. This is the main look. Load it from the folder
   (below) or from addons.mozilla.org once it is listed there.
2. **Stylesheets (optional):** `chrome/` adds rounded corners, moss menu
   hover, moss accents and a blank new-tab grid on top of the theme. They
   also work with Firefox's built-in Dark theme.

## Theme

Same colour keys and roles as DarkGold's Firefox theme: icons take the calm
colour (lichen here, gold there), and everything "hot" (tab line, pressed
button, menu and sidebar selection, loading) takes the accent (moss here,
coral there). Sumi Day's one loud colour is vermilion, kept for errors; it does not
appear in the chrome.
One extra key, `toolbar_field_border_focus`, pins the focused URL bar ring to
moss so it does not fall back to the desktop accent when
`widget.non-native-theme.use-theme-accent` is on (the Firefox default on
Linux). Two more, `toolbar_field_highlight` and `toolbar_field_highlight_text`,
colour selected text in the URL bar the same way, as DarkGold does. Every
text colour clears WCAG AA (4.5:1) on its background; icons and the tab
line clear 3:1.

| Hex       | Where in the theme                          |
|-----------|---------------------------------------------|
| ![#EDE8DE](https://placehold.co/12x12/ede8de/ede8de.png) `#EDE8DE` | Frame, new tab, text on moss selections    |
| ![#F7F3EB](https://placehold.co/12x12/f7f3eb/f7f3eb.png) `#F7F3EB` | Toolbar, menus                              |
| ![#D9D2C5](https://placehold.co/12x12/d9d2c5/d9d2c5.png) `#D9D2C5` | URL bar field, button hover, sidebar border |
| ![#1C1B19](https://placehold.co/12x12/1c1b19/1c1b19.png) `#1C1B19` | Body text                                   |
| ![#54645A](https://placehold.co/12x12/54645a/54645a.png) `#54645A` | Menu border                                 |
| ![#5D635A](https://placehold.co/12x12/5d635a/5d635a.png) `#5D635A` | Icons, inactive tab text                    |
| ![#566658](https://placehold.co/12x12/566658/566658.png) `#566658` | Focused tab text, focused URL bar ring and text selection, tab line, pressed button, menu and sidebar selection, loading, attention |

Build the package:

```bash
cd theme && zip -r -X ../cosmic-sumiday.zip . -x '.*'
```

Try it without installing: `about:debugging#/runtime/this-firefox` → **Load
Temporary Add-on** → pick `theme/manifest.json`. It is gone on restart. To
keep it, upload the zip to addons.mozilla.org (self-distribution is enough)
and install the signed `.xpi` it hands back.

## Stylesheets

```bash
./install.sh
```

Copies `chrome/` into your `*.default-release` profile, backs up anything it
replaces, and adds two prefs to `user.js`: one so Firefox reads the
stylesheets, one so the accent (URL bar ring, buttons) comes from the theme
and not the desktop. Then **fully restart**
Firefox - `userChrome.css` is parsed only at startup.

To install into another profile (a test profile, say), pass its folder:

```bash
./install.sh ~/.mozilla/firefox/<profile>
```

Every rice's `install.sh` takes the same argument, so switching a test
profile between rices is one command plus a restart.

Manual equivalent:

1. `about:config` → `toolkit.legacyUserProfileCustomizations.stylesheets` = `true`
2. `about:support` → Profile Directory → Open Directory
3. Copy `chrome/` in
4. Restart

To undo: delete the two files from the profile's `chrome/` folder and restart.

## Notes

- **Never set `--panel-*` or `--arrowpanel-*` on `:root`.** Those variables leak
  into the toolbar and blank the URL bar. They stay on the popup elements.
- **Context menus do not get an extra element border.** A second stroke made
  the right-click panel look detached. Hover is a moss-tinted ![#DDDCD3](https://placehold.co/12x12/dddcd3/dddcd3.png) `#DDDCD3`
  row with a 3px moss rail on the left, not a full ring.
- **Native menu styling is switched off** (`appearance: none`) on menus and
  menu rows. Without it the COSMIC/GTK hover paints over the colours above.
- **`[_moz-menuactive="true"]` is required.** Firefox marks the active
  context-menu row with that attribute, not only `:hover`.
- **`userContent.css` is colours plus one hide rule.** It sets accent / focus /
  link colours and hides shortcut artwork (`opacity: 0`) so the new-tab tiles
  stay blank. No size or position rules on the tiles.
- Built against **Firefox 154**.

## License

MIT, same as the rest of the repo.
