## Fontbakery report

Fontbakery version: 0.7.38

<details>
<summary><b>[1] Family checks</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Is the command `ftxvalidator` (Apple Font Tool Suite) available?</summary>

* [com.google.fonts/check/ftxvalidator_is_available](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ftxvalidator_is_available)
<pre>--- Rationale ---
There&#x27;s no reasonable (and legal) way to run the command `ftxvalidator` of the
Apple Font Tool Suite on a non-macOS machine. I.e. on GNU+Linux or Windows etc.
If Font Bakery is not running on an OSX machine, the machine running Font Bakery
could access `ftxvalidator` on OSX, e.g. via ssh or a remote procedure call
(rpc).
There&#x27;s an ssh example implementation at:
https://github.com/googlefonts/fontbakery/blob/main/prebuilt/workarounds
/ftxvalidator/ssh-implementation/ftxvalidator</pre>

* ⚠ **WARN** Could not find ftxvalidator. [code: ftxvalidator-available]

</details>
<br>
</details>
<details>
<summary><b>[5] Manrope[wght].ttf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Ensure variable fonts include an avar table.</summary>

* [com.google.fonts/check/mandatory_avar_table](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/mandatory_avar_table)
<pre>--- Rationale ---
Most variable fonts should include an avar table to correctly define axes
progression rates.
For example, a weight axis from 0% to 100% doesn&#x27;t map directly to 100 to 1000,
because a 10% progression from 0% may be too much to define the 200, while 90%
may be too little to define the 900.
If the progression rates of axes is linear, this check can be ignored. Fontmake
will also skip adding an avar table if the progression rates are linear.
However, we still recommend designers visually proof each instance is at the
desired weight, width etc.</pre>

* 🔥 **FAIL** This variable font does not have an avar table. [code: missing-avar]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check copyright namerecords match license file.</summary>

* [com.google.fonts/check/name/license](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/license)
<pre>--- Rationale ---
A known licensing description must be provided in the NameID 14 (LICENSE
DESCRIPTION) entries of the name table.
The source of truth for this check (to determine which license is in use) is a
file placed side-by-side to your font project including the licensing terms.
Depending on the chosen license, one of the following string snippets is
expected to be found on the NameID 13 (LICENSE DESCRIPTION) entries of the name
table:
- &quot;This Font Software is licensed under the SIL Open Font License, Version 1.1.
This license is available with a FAQ at: https://scripts.sil.org/OFL&quot;
- &quot;Licensed under the Apache License, Version 2.0&quot;
- &quot;Licensed under the Ubuntu Font Licence 1.0.&quot;
Currently accepted licenses are Apache or Open Font License.
For a small set of legacy families the Ubuntu Font License may be acceptable as
well.
When in doubt, please choose OFL for new font projects.</pre>

* ⚠ **WARN** Please consider using HTTPS URLs at name table entry [plat=3, enc=1, name=13] [code: http-in-description]
* ⚠ **WARN** For now we're still accepting http URLs, but you should consider using https instead.
 [code: http]

</details>
<details>
<summary>⚠ <b>WARN:</b> License URL matches License text on name table?</summary>

* [com.google.fonts/check/name/license_url](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/license_url)
<pre>--- Rationale ---
A known license URL must be provided in the NameID 14 (LICENSE INFO URL) entry
of the name table.
The source of truth for this check is the licensing text found on the NameID 13
entry (LICENSE DESCRIPTION).
The string snippets used for detecting licensing terms are:
- &quot;This Font Software is licensed under the SIL Open Font License, Version 1.1.
This license is available with a FAQ at: https://scripts.sil.org/OFL&quot;
- &quot;Licensed under the Apache License, Version 2.0&quot;
- &quot;Licensed under the Ubuntu Font Licence 1.0.&quot;
Currently accepted licenses are Apache or Open Font License.
For a small set of legacy families the Ubuntu Font License may be acceptable as
well.
When in doubt, please choose OFL for new font projects.</pre>

* ⚠ **WARN** Please consider using HTTPS URLs at name table entry [plat=3, enc=1, name=13] [code: http-in-description]
* ⚠ **WARN** Please consider using HTTPS URLs at name table entry [plat=3, enc=1, name=13] [code: http-in-description]
* ⚠ **WARN** Please consider using HTTPS URLs at name table entry [plat=3, enc=1, name=13] [code: http-in-description]
* ⚠ **WARN** Please consider using HTTPS URLs at name table entry [plat=3, enc=1, name=14] [code: http-in-license-info]
* ⚠ **WARN** For now we're still accepting http URLs, but you should consider using https instead.
 [code: http]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there caret positions declared for every ligature?</summary>

* [com.google.fonts/check/ligature_carets](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/ligature_carets)
<pre>--- Rationale ---
All ligatures in a font must have corresponding caret (text cursor) positions
defined in the GDEF table, otherwhise, users may experience issues with caret
rendering.
If using GlyphsApp or UFOs, ligature carets can be defined as anchors with names
starting with &#x27;caret_&#x27;. These can be compiled with fontmake as of version
v2.4.0.</pre>

* ⚠ **WARN** This font lacks caret position values for ligature glyphs on its GDEF table. [code: lacks-caret-pos]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---
Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + l
	- l + f
	- f + i
	- i + l
	- t + t
	- parenleft + c
	- c + parenright
	- parenright + greater
	- greater + parenright
	- hyphen + greater
	- greater + hyphen
	- space + less
	- less + three
	- three + space
	- less + hyphen

   [code: lacks-kern-info]

</details>
<br>
</details>

### Summary

| 💔 ERROR | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS | 🔎 DEBUG |
|:-----:|:----:|:----:|:----:|:----:|:----:|:----:|
| 0 | 1 | 5 | 98 | 8 | 95 | 0 |
| 0% | 0% | 2% | 47% | 4% | 46% | 0% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
* **DEBUG**
