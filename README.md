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
cd EcneProject
just install
```

# How to use Ecne ?

Compile your circuit [without any optimization](https://docs.circom.io/getting-started/compilation-options/#flags-and-options-related-to-the-compilers-output):

```
circom <path-to-circom-file> --r1cs --O0 --sym
```

This will generate a `r1cs` file and a `sym` file.

Then, run Ecne with the following command:

```
julia --project=. src/Ecne.jl --r1cs <path-to-r1cs-file> --name <name-of-circuit> --sym <path-to-sym-file>
```

For more options run: `just help`

## Todo

- [ ] Publish package
- [ ] Run benchmarks in CI
- [ ] Fix linter findings
- [ ] Run linter in CI
