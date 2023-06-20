# Minimal Ecne Solver based on https://github.com/franklynwang/EcneProject

# Requirements

- [install julia](https://github.com/JuliaLang/juliaup)
- [install just](https://github.com/casey/just)

# Clone Ecne

Clone the `Ecne` repository:

```
git clone https://github.com/MarkuSchick/minimal-ecne.git
```

Install Ecne

```
cd minmal-ecne
just install
```

# How to use Ecne ?

## Compile

Compile your circuit [without any optimization](https://docs.circom.io/getting-started/compilation-options/#flags-and-options-related-to-the-compilers-output):

```
circom <path-to-circom-file> --r1cs --O0 --sym
```

This will generate a `r1cs` file and a `sym` file.

## Run Ecne

```
julia --project=. src/Ecne.jl --r1cs NAME.r1cs --name NAME --sym NAME.sym
```

For more options run: `just help`

## Optional: Add Ecne to your path

Add the following line to the .bashrc file:
```
alias ecne="julia --project='/PATH/minimal-ecne' '/PATH/src/Ecne.jl'"
```

Reload the .bashrc file:
```
source .bashrc
```

Ecne can now be run from the Command Line

```
ecne --help
```

# Next Steps

- [ ] create [an executable](https://discourse.julialang.org/t/how-to-create-an-exe-file-from-julia-code/30004/57)
- [ ] publish package
- [ ] run benchmarks in CI
- [ ] fix linter findings
- [ ] run linter in CI
