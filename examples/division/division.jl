using Dates
import R1CSConstraintSolver: solveWithTrustedFunctions

try
    solveWithTrustedFunctions("examples/division/division.r1cs", "division!", input_sym="examples/division/division.sym")
catch e
    println(e)
end