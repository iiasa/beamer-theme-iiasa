# LaTeX/Beamer theme for IIASA presentations

This repository contains a theme for the [beamer](https://ctan.org/pkg/beamer) LaTeX package
that mimics the appearance of the IIASA presentation templates
([on IIASA SharePoint](https://iiasahub.sharepoint.com/sites/com/SitePages/Templates-and-logos.aspx),
not public),
which are provided only for Microsoft PowerPoint.

Contributions and refinements from IIASA colleagues are welcome.

## Features, usage, and demo

- See the files `example/{2025[abcd],2024,2019}.tex`,
  which demonstrate most of the features described below.
  On a system with [GNU Make](https://www.gnu.org/software/make/),
  [latexmk](https://ctan.org/pkg/latexmk/),
  and some TeX distribution installed,
  run `make -C example` to compile these demo files to PDFs.

- **Select theme version.** Use the 2025, 2024, or 2019 version of the theme:
  ```latex
  \documentclass[aspectratio=169]{beamer}
  \usetheme[version=2025]{iiasa}
  ```
  The 2025 version is default and will be selected if no option is given.

- **Install fonts.** 
  The 2025 and 2024 versions use Source Sans Pro,
  which is available in the [TeXLive package of the same name](https://tug.org/FontCatalogue/sourcesanspro/).
  This it the same font used in the provided PowerPoint file.
  The 2019 version of the theme uses Tahoma (if available; proprietary) or Fira (free) fonts.
  The provided PowerPoint file uses Tahoma.

- The title frame, section frames, and a “Thank you!” frame (see below)
  are displayed with a **coloured or image background** and the **IIASA logo**.
  The files used for this purpose are in the `image/` directory.

  (2025 version only.) The theme option ``title-bg`` can be used
  to select among four background images ``a``, ``b``, ``c``, or ``d``.
  The same image is used on the final “thank you” frame (below).

- The IIASA **colours** are available, including e.g. `IIASAblue`.
  See `beamercolourthemeiiasa_20*.sty`.
  The colours are used to style text elements,
  including internal and external hyperlinks.

- (2019 version only.) To handle **long frame titles**, use:
  ```latex
  {
  \pgfkeys{/iiasa/frametitle=long}
  \begin{frame}
  …
  \end{frame}
  }
  ```

- Generate a **“Thank you!” frame**:
  ```latex
  \makefinalslide
  ```

- Use `\appendix`.
  Frames after this point will be numbered,
  but the total frame count displayed in the footer will not be incremented and will
  include only frames prior to this command.
  For example, a bibliography may begin on frame “21/20”,
  where frame 20 is the last before `\appendix`.

## License

LaTeX and other files © 2018–2026 [Contributors](https://github.com/iiasa/beamer-theme-iiasa/graphs/contributors)

IIASA logo and images © 2018–2025 International Insitute for Applied Systems Analysis

The theme itself is licensed under a
[Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).
This means that if you change the theme and re-distribute it,
you must retain the copyright notice
and license your derivative under the same CC-BY-SA license.

Presentations created using the theme will contain the IIASA logo and images.
**No license is granted** to anyone other than IIASA staff and affiliates to use these graphics.
Third parties must obtain written permission from designer@iiasa.ac.at.
