# MDS Protocol

Code for the MDS protocol paper. PDF and docx formats available alongside a qmd file.

## Tools used
- Positron: version 2025.01.0 build 159
- Quarto: version 1.6.40
- terminal
- git: version 2.39.5 (Apple Git-154)
- github

# Getting started
If you are using this repo for the first time, you might want to install the following to get started.

```sh
install.packages(c("knitr", "rmarkdown", "readxl", "gt", "tidyverse", "plan"))
```

# To count words
Use the following code after getting to the correct directory via `terminal`

```sh
wc -w mds-anonymised.qmd
```

# To add line numbers:
Add this to `yaml`

```sh
format:
  tandf-pdf:
    keep-tex: true  
    include-in-header: 
      text: |
        \usepackage[left]{lineno}
        \linenumbers
```