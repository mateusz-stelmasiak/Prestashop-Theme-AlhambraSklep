# Prestashop-CustomTheme-AlhambraSklep
A custom theme made for https://alhambrasklep.pl/ prestashop e-commerce store.

## Screenshots
![screencapture-alhambrasklep-pl-pl-2023-09-12-18_35_06](https://github.com/mateusz-stelmasiak/Prestashop-CustomTheme-AlhambraSklep/assets/46268673/4f8e75df-934b-4fb0-b94b-08a2013b8e90)
![screencapture-alhambrasklep-pl-pl-26-zestawy-na-6-dniowy-post-dr-dabrowskiej-2023-09-12-18_35_17](https://github.com/mateusz-stelmasiak/Prestashop-CustomTheme-AlhambraSklep/assets/46268673/a0548cd7-fb90-434c-95e2-046e724c0b69)
![screencapture-alhambrasklep-pl-pl-zestawy-na-6-dniowy-post-dr-dabrowskiej-92-twoj-wlasny-zestaw-na-6-dni-z-kapusta-kiszona-html-2023-09-12-18_36_09](https://github.com/mateusz-stelmasiak/Prestashop-CustomTheme-AlhambraSklep/assets/46268673/42799a6b-6296-4e4b-a9f6-fc28c6dea12f)
![screencapture-alhambrasklep-pl-pl-zamowienie-2023-09-12-18_37_20](https://github.com/mateusz-stelmasiak/Prestashop-CustomTheme-AlhambraSklep/assets/46268673/167adec7-2979-4172-8431-30c88b593bd1)

## Design system
The theme is a child of PrestaShop 1.7 **Classic** (`use_parent_assets: true`). The whole look lives in
`jarhambra_theme/assets/css/custom.css`, split into three parts:

1. **Tokens** (`:root`): paper & ink colours, greens (incl. sage), harvest accents (clay / beet / honey), the pink
   promo colour, type (Georgia for headings, nav, prices and breadcrumb; Noto Sans for body, forms, buttons, tile
   titles and flags), shape, motion, spacing, the `--alh-vine` rule and the `--alh-blob` leaf silhouette.
2. **Layout**: single-row header, split hero carousel, 250px product grid, payment and invoice blocks.
3. **Skin**: surfaces, colour, type and shape over Classic.

The rules are:
- **Header:** the green Alhambra logo (`assets/img/logo-alhambra-green.png`) sits on the left, before the serif menu.
  The current category keeps its green underline.
- **Hero:** the copy sits on a paper panel on the left (a small green uppercase eyebrow, a serif line, text and a
  button). The photo fills the right. The arrows are white squares in the bottom-right corner. On phones the photo sits
  above the copy.
- **Product tiles:** there's no frame, only the photo, a sans title, a serif bold price and a small uppercase
  "ZOBACZ" outline button. On hover the photo gets a thin green frame and the button turns green. Flags sit flush
  in the photo's corner.
- **Category page:** a "KATEGORIA" eyebrow sits over a big serif name, straight on the paper. The filters are a
  bordered card titled "FILTRUJ WEDŁUG".
- **Background:** large faint sage and clay leaves sit behind the content.
- **Newsletter:** a full-width paper band sits directly on the dark green footer, with a solid sage leaf where the
  two meet.
- **Shapes:** everything is square. Cards, panels, inputs and flags have a 0 radius, and buttons have 2px. There are
  no shadows. Hover changes colour only.
- **Promos:** the pink announcement bar (`ppannouncements`) is only for time-limited promos.

Module overrides `ppannouncements` and `infobia_product_composer` use the same tokens (with hex fallbacks).
