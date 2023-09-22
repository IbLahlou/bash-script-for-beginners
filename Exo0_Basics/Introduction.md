## Introduction to bash scripting

Bash, which stands for Bourne Again Shell, is a Unix shell and command language. It was written by Brian Fox for the GNU Project as a free software replacement for the Bourne shell1. Bash was first released in 1989 and has been used as the default login shell for most Linux distributions1. It was one of the first programs that Linus Torvalds ported to Linux, alongside GCC1.

The primary use of Bash is for running commands on a command-line interface (CLI) and performing system maintenance tasks2. Bash scripts are easy to write and execute, and they can perform complex operations using a few lines of code2. Bash provides many built-in commands that can be used in scripts2.

On the other hand, Python is a high-level, general-purpose programming language that is often used for data analysis, machine learning, and web development3. It’s designed to be easy to read and simple to implement4.


- **Variables**
```bash
name="John Doe"
echo "Hello, $name"
```

- **Conditions**
```bash
if [ "$name" == "John Doe" ]; then
  echo "Hello, John Doe"
else
  echo "Hello, stranger"
fi
```

- **Loops**
```bash
for i in {1..5}; do
  echo "Iteration number $i"
done
```

- **Functions**
```bash
function greet() {
  echo "Hello, $1"
}
greet "John Doe"
```

- **Arrays**
```bash
names=("John" "Doe" "Jane")
echo ${names[0]} # Outputs "John"
```

- **File Management**
```bash
echo "Hello, World!" > hello.txt # Write to a file
cat hello.txt # Read from a file
```

- **Folder Management**
```bash
mkdir new_folder # Create a new folder
rmdir new_folder # Remove a folder
```

- **Modifications Privilege**
```bash
chmod +x script.sh # Make a script executable
```

- **Disk Management**
```bash
df -h # Display disk usage in human-readable format
du -sh * # Display the disk usage of all files and directories in the current directory in human-readable format
```

- **Environment Variable Management**
```bash
export VAR="value" # Set an environment variable
echo $VAR # Access an environment variable

unset VAR # Remove an environment variable
```