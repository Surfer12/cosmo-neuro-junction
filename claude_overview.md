# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build/Lint/Test Commands
- Julia run: `julia filename.jl`
- Julia test: `julia -e "using Pkg; Pkg.test()"`
- Julia single test: `julia -e "using Test; @testset \"Test Name\" begin include(\"test_file.jl\") end"`
- Julia REPL: `julia` to start interactive environment

## Code Style Guidelines
- Julia: Use Julia naming conventions (snake_case for functions/variables, CamelCase for types/modules)
- Types: Use proper type annotations where appropriate (Union{T, Nothing} for optional fields)
- Imports: Explicit imports with `using` or `import` statements
- Structures: Use Base.@kwdef for structs with keyword arguments
- Modules: Encapsulate related functionality in modules
- Documentation: Include docstrings for functions and types
- Error handling: Use try/catch blocks with specific error types
- Constants: Define model constants with `const` for immutable values
- Symbols: Use Symbols (:name) for YAML-style references/anchors
- Formatting: 4-space indentation, 92-char line length