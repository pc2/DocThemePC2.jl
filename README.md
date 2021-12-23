# DocThemePC2

[![Build Status](https://github.com/pc2/DocThemePC2.jl/workflows/CI/badge.svg)](https://github.com/pc2/DocThemePC2.jl/actions)

*A [Documenter.jl](https://github.com/JuliaDocs/Documenter.jl) theme for the [Paderborn Center of Parallel Computing (PC2)](https://pc2.uni-paderborn.de/).*

## Installation

<p>
DocThemePC2 is a &nbsp;
    <a href="https://julialang.org">
        <img src="https://raw.githubusercontent.com/JuliaLang/julia-logo-graphics/master/images/julia.ico" width="16em">
        Julia Language
    </a>
    &nbsp; package. To install DocThemePC2, use
</p>

```
] add https://github.com/pc2/DocThemePC2
```

## Usage

It's simple. Just put the following into your `docs/make.jl` file (before `makedocs`).

```julia
using DocThemePC2

# install theme
DocThemePC2.install(@__DIR__)
```

## Acknowledgement

This theme is based on [JuliaDynamics/doctheme](https://github.com/JuliaDynamics/doctheme) and inspired by [DocThemeIndigo.jl](https://github.com/JuliaDiff/DocThemeIndigo.jl).

## License

MIT License