using Dates
import R1CSConstraintSolver: solveWithTrustedFunctions

solveWithTrustedFunctions("examples/boundcheck/bad_bd_check.r1cs", "Bad Bound Check", input_sym="examples/boundcheck/bad_bd_check.sym", debug=false, printRes=true)

solveWithTrustedFunctions("examples/boundcheck/good_bd_check.r1cs", "Good Bound Check", input_sym="examples/boundcheck/good_bd_check.sym", debug=false, printRes=true)