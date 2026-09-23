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

1. **Tokens** (`:root`): paper & ink colours, greens, harvest accents (clay / beet / honey), the pink promo colour,
   type (Georgia for headings, nav, prices and breadcrumb; Noto Sans for body, forms, buttons and flags), shape,
   motion and spacing, plus the `--alh-vine` rule.
2. **Layout**: single-row header, full-bleed carousel, 250px product grid, payment and invoice blocks.
3. **Skin**: surfaces, colour, type and shape over Classic.

The rules are:
- Keep it square. Cards, panels, inputs and flags have a 0 radius, and buttons have 2px. No pills or circles.
- No shadows, lifts or glows. On hover only the colour changes. The one exception is a faint shadow when you hover a product tile.
- Use sentence case. Uppercase is only for coupon codes.
- Use the vine rule under section titles and across the top edge of the footer.
- Put the carousel caption on a flat paper card in the photo's empty corner (bottom-left).
- Keep the pink announcement bar (`ppannouncements`) for time-limited promos only.

Module overrides `ppannouncements` and `infobia_product_composer` use the same tokens (with hex fallbacks).
If no shop logo is uploaded, the header shows a type-only "Sklep / Alhambra" wordmark.
