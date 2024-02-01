import subprocess

print("Running MATLAB CODE FROM Python")

# Specify the full path to the MATLAB executable
# Adjust the path accordingly
matlab_executable = 'C:/Program Files/MATLAB/R2023b/bin/matlab.exe' 
matlab_process = subprocess.run([matlab_executable, "-batch", "run('mprog.m'); pause(5);"]
                    , capture_output=True)

# Read values from 'input.txt'
with open('input.txt', 'r') as file:
    line = file.readline()
    input_array = [int(value) for value in line.split()]
    
# Converts the input_array from integer to string from map
# Using list() to return a list of strings
input_array = list(map(str, input_array))

print("Running C CODE FROM Python")

# running the C program
subprocess.run(["gcc", "Cprog.c", "-o", "cprog"])
process = subprocess.run(["./cprog"] + input_array, capture_output=True, text=True)
output_variable = process.stdout.strip()
# Save the output_variable to a file
with open('c_output.txt', 'w') as f:
    f.write(output_variable)

# opens Matlab2.m
matlab_process = subprocess.run([matlab_executable, "-batch", "run('mprog2.m'); pause(10);"]
                    , capture_output=True)

print("Running HASKELL CODE FROM Python")

# running the haskell program
subprocess.run(['ghc', 'hprog.hs'])
process = subprocess.run(["./hprog"] + [str(x) for x in input_array], capture_output=True, text=True)
output_variable2 = process.stdout.strip()
# saving the output_variable2 to a file
with open('haskell_output.txt', 'w') as f:
    f.write(output_variable2)

print("Running PROLOG CODE FROM Python")

# running the prolog program and taking into account the input in prolog formatting
prolog_input = '[' + ','.join(map(str, input_array)) + '].'
result = subprocess.run(['swipl', '-q', '-g', 'main', '-t', 'halt', 'Pprog.pl'], input=prolog_input, capture_output=True, text=True)
output_variable3 = result.stdout.strip()
# saves the output_variable3 to a file
with open('prolog_output.txt', 'w') as f:
    f.write(output_variable3)