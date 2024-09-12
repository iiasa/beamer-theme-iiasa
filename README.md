# LaTeX/Beamer theme for IIASA presentations

This repository contains a LaTeX Beamer theme that mimics the appearance of the IIASA presentation templates for Microsoft PowerPoint.

Contributions and refinements from IIASA colleagues are welcome.

## Features, usage, and demo

- See the files `demo.tex` and `demo-2019.tex`, which demonstrate most of the features described below.
  On a system with [GNU Make](https://www.gnu.org/software/make/) installed, run `make` to compile both of these demo files to PDF.

- **Select theme version.** Use either the 2019 or 2024 version of the theme:
  ```latex
  \documentclass[aspectratio=169]{beamer}
  \usetheme[version=2024]{beamer}
  ```
  The 2024 version is default and will be selected if no option is given.

- **Install fonts.** The 2019 version of the theme uses Tahoma (if available; proprietary) or Fira (free) fonts.
  The 2024 version uses Source Sans Pro, which is available in the TeXLive package of the same name.

- The title frame, section frames, and a “Thank you!” frame (see below) are displayed with a **coloured or image background** and the **IIASA logo**.
  The files used for this purpose are in the `image/` directory.
- The IIASA **colours** are available, including e.g. `IIASAblue`.
  See `beamercolourthemeiiasa_20*.sty`.
  The colours are used to style text elements, including internal and external hyperlinks.
- (2019 theme version only.) To handle **long frame titles**, use:
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
- Use `\appendix`; frames after this one will be numbered but the total number of frames displayed will include only frames up to this point.
  For example, a bibliography may begin on frame “21/20”, where frame 20 is the last before `\appendix`.

## License

The theme itself is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/). This means that if you change the theme and re-distribute it, you must retain the copyright notice header and license it under the same CC-BY-SA license.

Presentations created with the theme will contain the IIASA logo, which is property of IIASA and may not be used without permission.
