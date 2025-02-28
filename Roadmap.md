## 1. Project Structure

unix-shell/
├── src/
│ ├── shell.c
└── include/
│ ├── shell.h
└── build/
└── tests/
└── README.md



## 2. Core Requirements

- [ ] Command Execution
- [ ] Built-in Commands
- [ ] Prompt Display
- [ ] Input Handling
- [ ] Process Management
- [ ] Signal Handling
- [ ] Command History



## 3. Plan of Shell Architecture

### Modular Components
1. Initialize Module
2. Input Handling Module
3. Execution Module
4. Process Execution Module
5. Utility Functions

### Key Functions

| Function Name                      | Responsibility                               |
|------------------------------------|----------------------------------------------|
| `void shell_loop()`                | Main shell loop to countinously accept input |
| `char *read_input()`               | Read user input from stdin                   |
| `char **parse_input(char *input)`  | Tokenize input into commands and arguments   |
| `int execute_command(char **args)` | Execute commands using `execvp`              |
| `int shell_cd(char **args)`        | Built-in `cd` command                        |
| `int shell_exit(char **args)`      | Built-in `exit` command                      |
| `void handle_signals(int signal)`  | Handle signals like `SIGINT`                 |



## 4. Develop in Iterative Steps

### Phase 1 - Basic Shell Loop
- Implement a loop to display a prompt and read user input
- Validate input and handle empty commands

### Phase 2 - Command Parsing
- Split the input string into commands and arguments using `strtok()`

### Phase 3 - Built-In Commands
- Implement basic built-in commands like `cd` and `exit`
- Ensure `cd` changes the working directory using `chdir()`

### Phase 4 - External Command Execution
- Use `fork()`, `execvp()`, and `waitpid()` to run external commands

### Phase 5 - Error Handling
- Add error messages for invalid commands or incorrect syntax

### Phase 6 - Testing and Debugging
- Test the shell with common UNIX commands
- Handle edge cases (e.g., empty input, invalid commands)



## 5. Testing Strategy

| Test Scenario     | Expected Outcome               |
|-------------------|--------------------------------|
| `ls`              | List directory contents        |
| `pwd`             | Show current working directory |
| `exit`            | Exit the shell                 |
| Invalid command   | Display an error message       |
| Long command line | Handle input overflow          |



## 6. 