from pysnark.runtime import snark, PrivVal, PubVal

@snark
def square(x, y):
    (x * x).assert_eq(y)  # Enforce constraint

# Define inputs
x = PrivVal(5)  # Private value
y = PubVal(25)  # Public value

# Call the function to generate constraints
square(x, y)

print("Constraints generated. Run proof generation separately.")