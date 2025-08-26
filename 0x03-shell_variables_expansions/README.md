# 0x03. Shell, init files, variables and expansions

This directory contains scripts and exercises that introduce key concepts about shell initialization files, shell variables, and various types of expansions in the shell. Mastery of these topics is fundamental for effective shell scripting and UNIX/Linux system usage.

## Learning Objectives

By completing the tasks in this directory, you should be able to:

- Differentiate between various shell initialization files (`.bashrc`, `.profile`, etc.)
- Understand and manipulate environment variables and local shell variables
- Create and use shell aliases
- Perform parameter and variable expansions
- Utilize command substitution and arithmetic expansion
- Apply shell wildcards and brace expansions

## Project Structure

Each file is an executable script demonstrating or solving a specific shell concept:

| Filename           | Description                                               |
|--------------------|-----------------------------------------------------------|
| `0-alias`          | Script that creates an alias                              |
| `1-hello_you`      | Prints `hello` followed by the current Linux user         |
| `2-path`           | Adds `/action` to the `PATH` variable                     |
| `3-paths`          | Counts number of directories in the `PATH`                |
| ...                | ...                                                       |
| `README.md`        | This file                                                 |

> **Note:** Each script is intended to be run in a Bash environment.

## Usage

To run a script, give it execute permission and run it from the terminal:
```bash
chmod +x script_name
./script_name
```

## Resources

- [Bash Reference Manual](https://www.gnu.org/software/bash/manual/bashref.html)
- [Linux Shell Expansions](https://www.gnu.org/software/bash/manual/html_node/Shell-Expansions.html)
- [Shell Variables](https://www.gnu.org/software/bash/manual/html_node/Shell-Variables.html)
- [Initialization Files](https://wiki.bash-hackers.org/scripting/bashrc)

---

*This project is part of the ALX Software Engineering program.*
