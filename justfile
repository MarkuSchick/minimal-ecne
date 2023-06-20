julia := "julia --project=."

install:
    {{julia}} -e "import Pkg; Pkg.instantiate()"

resolve:
    {{julia}} -e "import Pkg; Pkg.resolve()"

repl:
    {{julia}}

notebook:
    {{julia}} -e "import Pluto; Pluto.run()"

format:
    {{julia}} -e "using JuliaFormatter; format(\".\", verbose=true); "

bench:
    {{julia}} bench/bench.jl

check:
    if [[ $(git diff --name-only) ]]; then \
        >&2 echo "Please run check on a clean Git working tree."; \
        exit 1; \
    fi
    just format
    files=$(git diff --name-only); \
    if [[ $files ]]; then \
        >&2 echo "Formatting issues found:"; \
        >&2 echo "$files"; \
        exit 1; \
    fi

test:
    {{julia}} --project=. test/runtests.jl

lint:
    {{julia}} -e "using JET, R1CSConstraintSolver; @show report_package(R1CSConstraintSolver); "

examples:
    {{julia}} --project=. examples/division/verify.jl

help:
    {{julia}} --project=. src/Ecne.jl --help