# Upstream and modifications

Source: https://github.com/billryan/resume
Commit: eadc3955cf006254dc8f2419e971fbe3f5bab413

The upstream MIT LICENSE is retained. Changes: navy section headings, new Chinese and English academic placeholder documents, Overleaf setup instructions, and XeLaTeX build configuration. Original example personal information is not included.

For portability, the class now uses TeX Live's TeX Gyre Termes by family name and fontawesome5 instead of bundled font files and older icon support. Chinese text uses ctex with the Fandol font set. No third-party font binaries or Adobe fonts are redistributed here.

## Validation

The entry points, class dependencies, and input paths were checked. Local PDF compilation was attempted but the execution environment does not contain the xelatex format file. PDF rendering has therefore not been verified in this environment. Compile on Overleaf with XeLaTeX before use.
