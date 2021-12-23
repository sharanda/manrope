# Manrope Font
Manrope font is an open-source modern sans-serif font family. Designed by Mikhail Sharanda in 2018-2021.

Preview, download & test: http://manropefont.com/

## Manrope Italic
Please support Manrope Italic fork:
https://github.com/cssobral2013/manrope

## Features
- Semi-condensed, clean, minimal sans-serif font family
- Variable font + 7 legacy weights
- Desktop and web-font formats
- Geometric Digits
- Packed with OpenType features: Case Sensitive, Auto-Apostrophe, Contextual Alternates, Common Ligatures, Custom Icon-Ligatures, Tabular Figures
- Supports most of Latin & Cyrillic languages:
	- Albanian, Belarusian, Bosnian, Bulgarian, Catalan, Croatian, Czech, Danish, English, Estonian, Filipino, Finnish, French, Galician, German, Greek, Hungarian, Icelandic, Indonesian, Irish, Italian, Latvian, Lithuanian, Luxembourgish, Macedonian, Malagasy, Malay, Mongolian, Norwegian, Polish, Portuguese, Romanian, Russian, Scottish Gaelic, Serbian, Slovak, Slovenian, liish, Swahili, Swedish, Taita, Turkish, Welsh, Zulu

## Changelog
- v 4.505 / December 21, 2021:
	- Taller contextual alternative for /l when it stands before or after capital /I;
	- Added Modifier Letter Apostrophe /ʼ for Uzbek language;
	- Fixed shape mistake in Cyrillic /Ц;
	- Updated Slovak diacritics /ť /Ľ /ľ - fixed shape and position;
	- Added Single Story /a alternative glyph;
	- Added WOFF2 variable font format;
	- Added inch marks /″;
- v 4.504 / October 22, 2020 / Added: Vietnamese dong ₫, fixed ordinal indicators º ª
- v 4.503 / Minor improvements
- v 4.502 / Minor improvements
- v 4.501 / Minor improvements
- v 4.5 / March 14, 2020
	- Vietnamese support;
	- Esperanto support;
	- Fixed Greek I with an accent;
	- Updated Latin marks;
	- Added currencies: ₣, ₩, ₹, ₱, ₪, ₺, ₮, ₿;
- v 4 / December 4, 2019
	- Variable format;
	- Greek support;
	- Improved Cyrillic;
	- Countless minor adjustments;
	- NOTE: adjusted 'units per em' setting, which made line-height slightly bigger than before;
	- NOTE: 'thin' weight has been renamed to 'ExtraLight';
- v 3 / March 25, 2019
- v 2 / December 4, 2018
- v 1.2 / August 24, 2018
- v 1.1 / July 29, 2018
- v 1 / July 1, 2018
	- First release;


## Building (needed for Google Fonts only)

Fonts are built automatically by GitHub Actions - take a look in the "Actions" tab for the latest build.

If you particularly want to build fonts manually on your own computer, you will need to install the [`yq` utility](https://github.com/mikefarah/yq). On OS X with Homebrew, type `brew install yq`; on Linux, try `snap install yq`; if all else fails, try the instructions on the linked page.

Then:

* `make build` will produce font files.
* `make test` will run [FontBakery](https://github.com/googlefonts/fontbakery)'s quality assurance tests.
* `make proof` will generate HTML proof files.

## License

This Font Software is licensed under the SIL Open Font License, Version 1.1.
This license is copied below, and is also available with a FAQ at
http://scripts.sil.org/OFL

## Repository Layout

This font repository structure is inspired by [Unified Font Repository v0.3](https://github.com/unified-font-repository/Unified-Font-Repository), modified for the Google Fonts workflow.


# 🤜 🤛
Special thanks to [Mirko Velimirovic](https://mirkovelimirovic.com/) for contribution.
