# Basic UNIX Shell

A simple, yet functional command-line shell for a UNIX-based system that can execute commands, handle basic built-in functions, and provide a basic user interface.



## Features
1) Command Execution
    - `ls`, `pwd`, `echo`
2) Built-in Commands
    - `cd`, `exit`, `help`
3) Input Handling
4) Process Management
    - `fork()`, `exec()`, `wait()`
5) Signal Handling
   - `ctrl + c`
6) Command History


## Installation and Running

Clone the repository
```
$ git clone https://github.com/YashShah138/unix-shell
```

Change working directory
```
$ cd unix-shell
```

Compile
```
$ gcc -o build/rudimentary_shell src/shell.c
```

Run the shell
```
$ ./build/unix-shell
```