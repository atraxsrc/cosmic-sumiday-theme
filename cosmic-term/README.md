# COSMIC Terminal schemes

Colour schemes for COSMIC Terminal. The desktop `.ron` in `cosmic/` does not
colour ANSI text, so the terminal needs its own import.

1. COSMIC Terminal → **View → Color schemes…** (not Settings → Appearance)
2. **Dark** tab → **Import** → a `.ron` from this folder
3. View → Settings → Appearance → Color scheme (dark) → the scheme name

If a profile is set as default, set the scheme on that profile too or the
dropdown will look like it did nothing. `cosmic/install.sh` selects **Sumi Day**,
so import that one at least.

Every scheme here keeps the 16 ANSI colours of Sumi Day. Only the plain text
colour and the dim text change, so bat, lsd, starship, nala and btop look the
same whichever one you pick. The cursor stays moss ![#566658](https://placehold.co/12x12/566658/566658.png) `#566658`.

The ANSI slots follow the rice: `red` is vermilion ![#AC3320](https://placehold.co/12x12/ac3320/ac3320.png) `#AC3320`, the one colour
kept for what is wrong; `green` is lichen ![#5D635A](https://placehold.co/12x12/5d635a/5d635a.png) `#5D635A`; `yellow` is gold
![#745E30](https://placehold.co/12x12/745e30/745e30.png) `#745E30`; `blue` is the moss accent ![#566658](https://placehold.co/12x12/566658/566658.png) `#566658`, so nala's `Updated:` and
`Downloaded:` labels sit in the rice's own colour next to the lichen
`No Change:`; `magenta` is coral ![#A23A2A](https://placehold.co/12x12/a23a2a/a23a2a.png) `#A23A2A`, the warm colour numbers and
warnings take; `cyan` is stone ![#5A6363](https://placehold.co/12x12/5a6363/5a6363.png) `#5A6363`; `white` is
![#5A5449](https://placehold.co/12x12/5a5449/5a5449.png) `#5A5449`. Directories are not affected: `LS_COLORS` in `zsh/sumiday.zsh` colours
them in truecolor.

## Which one

Ink ![#1C1B19](https://placehold.co/12x12/1c1b19/1c1b19.png) `#1C1B19` is the default. The others move through Sumi Day's own greys
and tints: calmer above it, brighter below it, for whoever finds the default
glares at night or reads too dim by day.

| Scheme | Plain text | Contrast | Also used for |
|--------|------------|----------|---------------|
| Sumi Day Stone | ![#64615E](https://placehold.co/12x12/64615e/64615e.png) `#64615E` | 5.0:1 | muted text, the dim text colour |
| Sumi Day Fern | ![#54645A](https://placehold.co/12x12/54645a/54645a.png) `#54645A` | 5.1:1 | directories (`LS_COLORS`), types |
| Sumi Day Lichen | ![#5D635A](https://placehold.co/12x12/5d635a/5d635a.png) `#5D635A` | 5.1:1 | strings, success, the `green` slot |
| Sumi Day Moss | ![#566658](https://placehold.co/12x12/566658/566658.png) `#566658` | 5.0:1 | the accent, the cursor and the `blue` slot |
| Sumi Day Coal | ![#4B453A](https://placehold.co/12x12/4b453a/4b453a.png) `#4B453A` | 7.8:1 | a neutral a step from plain text |
| **Sumi Day** (default) | ![#1C1B19](https://placehold.co/12x12/1c1b19/1c1b19.png) `#1C1B19` | 14.1:1 | the desktop text colour |

When plain text shares a colour with an ANSI slot, output in that slot stops
standing out: directories in Sumi Day Fern, for example, look like plain text.
Vermilion errors and coral numbers stand out more against the dimmer
schemes than against ink.

**Bold:** `bright_foreground` (![#0E0E0D](https://placehold.co/12x12/0e0e0d/0e0e0d.png) `#0E0E0D`) only colours bold text when
`use_bright_bold` is on. The baseline config in `cosmic/config/` leaves it off,
so bold text is the plain text colour at weight 800.

Previews are rendered in Fira Mono on the theme background ![#EDE8DE](https://placehold.co/12x12/ede8de/ede8de.png) `#EDE8DE`, not
taken from the terminal. In COSMIC you get Maple Mono at 77% opacity over the
wallpaper, so text looks a little softer and contrast a little lower.

## Dark

**Sumi Day** · `SumiDay-term.ron` · ink ![#1C1B19](https://placehold.co/12x12/1c1b19/1c1b19.png) `#1C1B19`, 14.1:1. The default.

![Sumi Day](../assets/cosmic-term/SumiDay-term.png)

**Sumi Day Stone** · `SumiDay-term-stone.ron` · ![#64615E](https://placehold.co/12x12/64615e/64615e.png) `#64615E`, 5.0:1. Muted text, the dim text colour.

![Sumi Day Stone](../assets/cosmic-term/SumiDay-term-stone.png)

**Sumi Day Fern** · `SumiDay-term-fern.ron` · ![#54645A](https://placehold.co/12x12/54645a/54645a.png) `#54645A`, 5.1:1. Directories (`LS_COLORS`), types.

![Sumi Day Fern](../assets/cosmic-term/SumiDay-term-fern.png)

**Sumi Day Lichen** · `SumiDay-term-lichen.ron` · ![#5D635A](https://placehold.co/12x12/5d635a/5d635a.png) `#5D635A`, 5.1:1. Strings, success, the `green` slot.

![Sumi Day Lichen](../assets/cosmic-term/SumiDay-term-lichen.png)

**Sumi Day Moss** · `SumiDay-term-moss.ron` · ![#566658](https://placehold.co/12x12/566658/566658.png) `#566658`, 5.0:1. The accent, the cursor and the `blue` slot.

![Sumi Day Moss](../assets/cosmic-term/SumiDay-term-moss.png)

**Sumi Day Coal** · `SumiDay-term-coal.ron` · ![#4B453A](https://placehold.co/12x12/4b453a/4b453a.png) `#4B453A`, 7.8:1. A neutral a step from plain text.

![Sumi Day Coal](../assets/cosmic-term/SumiDay-term-coal.png)

Contrast is plain text on the theme background, WCAG 2.
