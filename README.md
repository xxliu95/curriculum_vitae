# Curriculum Vitae

LaTeX source for Xinxin Liu's résumé. Edit `resume.tex`, then build a PDF locally.

PDF build artifacts are gitignored — only the `.tex` (and this repo) are versioned.

## Prerequisites: TinyTeX

This project uses [TinyTeX](https://yihui.org/tinytex/) (a lightweight TeX Live). No admin/sudo is required for the install itself.

### Install (macOS / Linux)

```bash
curl -fsSL https://yihui.org/tinytex/install-bin-unix.sh | sh
```

Add TinyTeX to your `PATH` (adjust the arch folder if needed):

```bash
# Apple Silicon / universal macOS binary
export PATH="$PATH:$HOME/Library/TinyTeX/bin/universal-darwin"

# Linux typical path
# export PATH="$PATH:$HOME/bin"   # TinyTeX often links pdflatex here
```

Persist it in `~/.zshrc` or `~/.bashrc`:

```bash
echo 'export PATH="$PATH:$HOME/Library/TinyTeX/bin/universal-darwin"' >> ~/.zshrc
source ~/.zshrc
```

Verify:

```bash
pdflatex --version
```

### Extra packages used by this résumé

After install / if build fails on a missing `.sty`:

```bash
tlmgr update --self
tlmgr install geometry enumitem titlesec hyperref xcolor
```

### Windows

See [TinyTeX for Windows](https://yihui.org/tinytex/#for-windows-users), or use WSL and follow the Linux steps above.

## Build (convert `.tex` → PDF)

From this directory:

```bash
make
```

Or without Make:

```bash
pdflatex -interaction=nonstopmode resume.tex
pdflatex -interaction=nonstopmode resume.tex
```

(Run twice so cross-references / PDF outlines settle.)

Output: `resume.pdf` (local only; not committed).

### Clean intermediates

```bash
make clean
```

## Files

| File         | Purpose                          |
|--------------|----------------------------------|
| `resume.tex` | Résumé source                    |
| `Makefile`   | `make` / `make clean`            |
| `.gitignore` | Ignores `*.pdf` and TeX junk     |
